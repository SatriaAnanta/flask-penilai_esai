import flask
import string
import json
from flask import request, jsonify
from flaskext.mysql import MySQL
from flasgger import Swagger



#Cossine Similarity
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.feature_extraction.text import CountVectorizer
#Selesai Cossine Similarity

#TF-IDF
from sklearn.feature_extraction.text import TfidfVectorizer
#Selesai TF-IDF

#Jaccard
from sklearn.metrics import jaccard_similarity_score
#Selesai Jaccard
from sklearn.metrics.pairwise import euclidean_distances

#Sastrawi
from Sastrawi.Stemmer.StemmerFactory import StemmerFactory
from Sastrawi.StopWordRemover.StopWordRemoverFactory import StopWordRemoverFactory
#Selesai Sastrawi

#Init App
app = flask.Flask(__name__)
app.config["DEBUG"] = True
#Selesai Init App

#Create Swagger
swagger = Swagger(app)
#Selesai Swagger

#Create Stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()
#End Stemmer

#Create Stopword Factory
stop_factory = StopWordRemoverFactory()
#End Stopword Factory

#Konek Ke Database
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'test'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
#Selesai Konek Kedatabase


@app.route('/', methods=['GET'])
def home():
    return '''<h1>Test</h1>
<p>API Untuk Mengoreksi Esai</p>'''


#Tes Ambil Data Dari Database
@app.route('/ambil', methods=['GET'])
def api_topik_all():
    cur = mysql.connect().cursor()
    cur.execute("select * from topik")
    data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]
    return jsonify(data)
#Selesai Ambil Data Dari Database

#Tes Ambil Data Dari Database
@app.route('/topik/<id>', methods=['GET'])
def api_topik(id):
    """
    Ambil Topik
    This is using docstrings for specifications.
    ---
    tags :
        - Data
    parameters:
      - name: id
        in: path
        type: string
        enum: ['all', '1', '2']
        required: true
        default: all
    definitions:
      id:
        type: object
        properties:
          id_name:
            type: array
            items:
              $ref: '#/definitions/id'
      id:
        type: string
    responses:
      200:
        description: 
        schema:
          $ref: '#/definitions/id'
        examples:
          id : ['all', '1', '2']
    """    
    cur = mysql.connect().cursor()

    if id == 'all' :
        cur.execute("select * from topik")
        data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]
    else :
        query ="select * from topik where key_topik="
        query += str(id)
        cur.execute(query)
        data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]

    return jsonify(data)
#Selesai Ambil Data Dari Database

@app.route('/materi/<id>', methods=['GET'])
def api_materi(id):
    """
    Ambil Materi
    This is using docstrings for specifications.
    ---
    tags :
        - Data
    parameters:
      - name: id
        in: path
        type: string
        enum: ['all', '1', '2']
        required: true
        default: all
    definitions:
      id:
        type: object
        properties:
          id_name:
            type: array
            items:
              $ref: '#/definitions/id'
      id:
        type: string
    responses:
      200:
        description: 
        schema:
          $ref: '#/definitions/id'
        examples:
          id: ['all', '1', '2']
    """    
    cur = mysql.connect().cursor()

    if id == 'all' :
        cur.execute("select * from materi")
        data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]
    else :
        query ="select * from materi where key_materi="
        query += str(id)
        cur.execute(query)
        data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]

    return jsonify(data)
#Selesai Ambil Data Dari Database

@app.route('/pertanyaan/<id>', methods=['GET'])
def api_pertanyaan(id):
    """
    Ambil Pertanyaan
    This is using docstrings for specifications.
    ---
    tags :
        - Data
    parameters:
      - name: id
        in: path
        type: string
        enum: ['all', '1', '2']
        required: true
        default: all
    definitions:
      id:
        type: object
        properties:
          id_name:
            type: array
            items:
              $ref: '#/definitions/id'
      id:
        type: string
    responses:
      200:
        description: 
        schema:
          $ref: '#/definitions/id'
        examples:
          id: ['all', '1', '2']
    """    
    cur = mysql.connect().cursor()

    if id == 'all' :
        cur.execute("select * from pertanyaan")
        data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]
    else :
        query ="select * from pertanyaan where key_pertanyaan="
        query += str(id)
        cur.execute(query)
        data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]

    return jsonify(data)
#Selesai Ambil Data Dari Database


@app.errorhandler(404)
def page_not_found(e):
    return "<h1>404</h1><p>The resource could not be found.</p>", 404


#Penilai Essai
@app.route('/koreksi', methods=['POST'])
def word_tokenize():
    """
    Ini adalah endpoint untuk melakukan koreksi soal esai
    ---
    tags:
        - Pengoreksi Esai
    parameters:
        - name: body
          in: body
          required: true
          schema:
            id: Sentence
            required:
                - sentence
                - id_soal
            properties:
                sentence:
                    type: string
                    description: Silahkan isikan jawaban dari soal esai yang telah dipilih
                    default: ""
                id_soal:
                    type: integer
                    description: Silahkan isikan id soal esai yang akan dikerjakan
                    default: ""
    responses:
        200:
            description: Berhasil
        400:
            description: Mohon maaf, ada permasalahan dalam memproses permintaan Anda
    """
    kesamaan = 0
    kesamaantemp=0
    nilai=0
    jawaban= ""
    dataJson = {}
    dataCoba = {}
    dataJson['hasilkoreksi'] = []
    stopword = stop_factory.create_stop_word_remover()
    new_sent = request.get_json()
    sent = new_sent['sentence']
    idku = new_sent['id_soal']
    dataCoba['jawabanuser'] = sent
    cur = mysql.connect().cursor()
    query = "SELECT pertanyaan.pertanyaan, jawaban.jawaban, jawaban.bobot FROM pertanyaan INNER JOIN jawaban ON pertanyaan.key_pertanyaan=jawaban.key_pertanyaan WHERE jawaban.key_pertanyaan="
    query += str(idku)
    cur.execute(query)
    data = [dict((cur.description[i][0], value)
              for i, value in enumerate(row)) for row in cur.fetchall()]

    #Proses Remove Stopword
    sent=stopword.remove(sent)
    #Proses Stemming
    sent=stemmer.stem(sent)

    for val in data:
        Dokumen1=(val['jawaban'])
        #Proses Remove Stopword
        Dokumen1=stopword.remove(Dokumen1)       
        #Selesai Proses Remove Stopword        
        #Proses Stemming
        Dokumen1=stemmer.stem(Dokumen1)
        #Selesai Proses Stemming
        documents = (sent,Dokumen1)
        tfidf_vectorizer = TfidfVectorizer()
        tfidf_matrix = tfidf_vectorizer.fit_transform(documents)
        kesamaan = cosine_similarity(tfidf_matrix[0:1], tfidf_matrix)[0,1]
        print (jawaban)
        print (kesamaan)

        if kesamaan > kesamaantemp :
            kesamaantemp = kesamaan
            jawaban = (val['jawaban'])
            nilai = kesamaan*(val['bobot'])

    dataCoba['kesamaan'] = kesamaantemp
    dataCoba['jawabansistem'] = jawaban
    dataCoba['nilai'] = nilai 
    dataJson['hasilkoreksi'].append(dataCoba)
    print (jawaban)
    print (kesamaantemp)
    print (dataJson)
    return jsonify(dataJson)

#Selesai Penilai Esai

if __name__ == '__main__':
    app.run()