-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2019 at 09:55 AM
-- Server version: 10.1.37-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `key_jawaban` int(11) NOT NULL,
  `key_pertanyaan` int(11) DEFAULT NULL,
  `jawaban` varchar(255) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`key_jawaban`, `key_pertanyaan`, `jawaban`, `bobot`) VALUES
(1, 1, 'Data merupakan deskripsi dasar dari sesuatu objek, kejadian, aktifitas dan transaksi yang di rekam, terklasifikasi dan disimpan tetapi belum memiliki arti yang spesifik', 100),
(2, 1, 'Data adalah fakta-fakta mentah atau deskripsi-deskripsi dasar dari hal, event, aktivitas, dan traksaksi yang ditangkap, direkam, disimpan, diklasifikasikan, tetapi tidak diorganisasikan untuk tujuan spesifik tertentu.', 100),
(3, 1, 'Data sendiri ialah kumpulan item yang belum diproses, yang dapat mencakup teks, angka, gambar, audio dan video', 100),
(4, 1, 'Data merupakan fakta-fakta atau pengamatan mengenai orang, tempat, sesuatu, dan kejadian', 100),
(5, 2, 'Informasi merupakan hasil pengolahan data sehingga menjadi bentuk yang penting bagi penerimanya dan mempunyai kegunaan sebagai dasar dalam pengambilan keputusan yang dapat dirasakan akibatnya secara langsung saat itu juga atau secara tidak langsung pada s', 100),
(6, 2, 'Informasi adalah data yang telah diatur sehingga memiliki makna dan nilai bagi penerimanya', 100),
(7, 2, 'Informasi adalah data yang telah diberi makna melalui konteks', 100),
(8, 2, 'Informasi adalah data yang disimpan, diproses, atau ditransmisikan', 100),
(9, 2, 'Informasi adalah  data yang telah di rangkum atau di manipulasi dalam bentuk lain untuk tujuan pengambilan keputusan', 100),
(10, 2, 'Informasi dapat diartikan suatu data yang telah diproses dan diubah menjadi konteks yang berarti sehingga memiliki makna dan nilai bagi penerimanya dan biasa digunakan untuk pengambilan keputusan.', 100),
(11, 3, 'Teknologi informasi adalah seperangkat alat yang membantu Anda bekerja dengan informasi dan melakukan tugas-tugas yang berhubungan dengan pemprosesan informasi', 100),
(12, 3, 'Teknologi informasi tidak hanya terbatas pada teknologi komputer ( perangkat keras dan perangkat lunak ) yang digunakan untuk memproses dan menyimpan informasi, melainkan juga mencangkup teknologi komunikasi untuk mengirimkan informasi', 100),
(13, 3, 'Teknologi informasi adalah teknologi yang menggabungkan komputasi (komputer) dengan jalur komunikasi berkecepatan tinggi yang membawa data, suara, dan video', 100),
(14, 3, 'Teknologi informasi adalah gabungan antara teknologi komputer dan teknologi telekomunikasi', 100),
(15, 4, 'Suatu alat elektronik yang mampu melakukan beberapa tugas, yaitu menerima input, memproses input sesuai dengan programnya, menyimpan perintah dan hasil dari pengolahan, menyediakan output dalam bentuk informasi', 100),
(16, 4, 'Sistem elektronik untuk memanipulasi data yang cepat dan tepat serta dirancang dan diorganisasikan supaya secara otomatis menerima dan menyimpan data input, memprosesnya, dan menghasilkan output di bawah pengawasan suatu langkah-langkah instruksi-intruksi', 100),
(17, 4, 'Mesin penghitung elektronik yang cepat, dapat menerima informasi input digital, memprosesnya sesuai dengan suatu program yang tersimpan di memorinya dan menghasilkan output informasi', 100),
(18, 4, 'Suatu pemproses data yang dapat melakukan perhitungan yang besar dan cepat, termasuk perhitungan aritmatika yang besar atau operasi logika, tanpa campur tangan dari manusia yang mengoperasikan selama pemrosesan', 100),
(19, 4, 'Tipe khusus alat penghitung yang mempunyai sifat tertentu yang pasti', 100),
(20, 4, 'Alat elektronik yang dapat menerima input data, dapat mengolah data, dapat memberikan informasi, menggunakan suatu program yang tersimpan di memori komputer, dapat menyimpan program dan hasil pengolahan, serta bekerja secara otomatis', 100),
(21, 5, 'Mainframe merupakan jenis komputer yang digunakan pada perusahaan-perusahaan berskala besar untuk menangani pemrosesan data dengan volume yang sangat besar', 100),
(22, 5, 'Komputer yang relatif besar yang digunakan dalam perusahaan untuk aplikasi komputasi yang luas dan yang diakses oleh ribuan pengguna', 100),
(23, 5, 'Komputer besar yang digunakan untuk memproses data dan aplikasi yang besar', 100),
(24, 6, 'Keyboard merupakan piranti pemasukan data yang dapat mengubah huruf, angka, ataupun kode lain menjadi isyarat listrik yang dapat diproses komputer', 100),
(25, 6, 'Peralatan input yang paling umum untuk teks dan data numerik', 100),
(26, 6, 'Keyboard merupakan salah satu alat masukan yang paling banyak digunakan dalam sistem komputer', 100),
(27, 6, 'Keyboard merupakan sebuah papan yang terdiri atas tombol-tombol seperti huruf alfabet (A-Z) untuk mengetikkan kalimat, juga terdapat angka 1 sampai 9, dan juga 0. Serta simbol-simbol khusus lainnya pada komputer.', 100),
(28, 7, 'Scanner merupakan suatu alat yang digunakan untuk memindai suatu bentuk maupun sifat benda, seperti dokumen, foto, gelombang, suhu dan lain-lain', 100),
(29, 7, 'Scanner merupakan peranti yang dapat mengambil masukan data gambar, foto, bahkan juga tulisan tangan', 100),
(30, 7, 'Scanner merupakan alat masukan yang memiliki fungsi mirip dengan mesin fotocopy', 100),
(31, 8, 'Register adalah area penyimpanan data berkecepatan tinggi yang menyimpan data dan perintah berjumlah sangat kecil, untuk jangka waktu pendek', 100),
(32, 8, 'Register adalah memori dalam CPU yang mempunyai kecepatan sangat tinggi, yang digunakan untuk berbagai operasi dalam CPU', 100),
(33, 8, 'Register adalah memori berukuran sangat kecil dengan kecepatan akses sangat tinggi', 100),
(34, 8, 'Register adalah sejumlah kecil memori komputer yang bekerja dengan kecepatan sangat tinggi yang digunakan untuk melakukan eksekusi terhadap program-program komputer dengan menyediakan akses yang cepat terhadap nilai-nilai yang umum digunakan', 100),
(35, 9, 'ROM adalah jenis memori yang isinya tidak hilang ketika tidak mendapat aliran listrik dan pada awalnya isinya hanya bisa dibaca', 100),
(36, 9, 'ROM adalah tempat dimana berbagai perintah penting dijaga keamanannya', 100),
(37, 9, 'ROM adalah adalah jenis memori non-volatil yang digunakan di komputer dan perangkat elektronik lainnya', 100),
(38, 10, 'RAM adalah bagian dari penyimpanan primer yang menyimpan program peranti lunak dan sejumlah kecil data ketika dibawa dari penyimpanan sekunder', 100),
(39, 10, 'RAM adalah jenis memori yang isinya dapat diganti-ganti selama komputer dihidupkan dan mempunyai sifat bisa mengingat data/program selama terdapat arus listrik', 100),
(40, 10, 'RAM adalah sebuah tipe penyimpanan komputer yang isinya dapat diakses dalam waktu yang tetap tidak memperdulikan letak data tersebut dalam memori', 100),
(41, 11, 'Stabil', 100),
(42, 11, 'Membutuhkan lebih banyak waktu menarik data dari penyimpanan sekunder daripada dari RAM karena sifat elektromekanis dari peralatan penyimpanan sekunder', 100),
(43, 11, 'Lebih murah daripada penyimpanan primer', 100),
(44, 11, 'Dapat ditempatkan di berbagai jenis media, masing-masing dengan teknologinya sendiri', 100),
(45, 11, 'Sifat penyimpanan yang tetap, sehingga media penyimpan sekunder perlu dipisahkan dari unit pengolah utama, dan di hubungkan oleh kabel ke unit pengolah dan memori utama', 100),
(46, 11, 'Kemampuan untuk digunakan secara bersama-sama', 100),
(47, 11, 'Kemampuan untuk menyimpan sejumlah data, informasi, dan program', 100),
(50, 12, 'Bahasa mesin adalah bahasa komputer tingkat terandah, yang berisi representasi internal dari instruksi dan data', 100),
(51, 12, 'Bahasa mesin merupakan seperangkat instruksi serta data yang dapat dieksekusi secara langsung oleh prosesor komputer.', 100),
(52, 12, 'Bahasa mesin adalah bahasa pemprograman tingkat terendah, yang terdiri atas digit-digit biner', 100),
(54, 13, 'Peranti lunak sistem adalah serangkaian instruksi yang khususnya menjadi penghubung antara peranti keras komputer dan program aplikasi', 100),
(55, 13, 'Peranti lunak sistem adalah program yang digunakan untuk mengontrol sumber daya komputer, seperti CPU dan peranti masukan/keluaran', 100),
(56, 14, 'Peranti lunak aplikasi adalah program yang biasa dipakai oleh pemakai untuk melakukan tugas-tugas yang spesifik', 100),
(57, 14, 'Peranti lunak aplikasi adalah rangkaian instruksi komputer yang megarahkan sistem komputer untuk melaksanakan aktivitas pemrosesan tertentu dan menyediakan fungsionalitas bagi pengguna', 100),
(58, 15, 'Peranti lunak open-source adalah peranti lunak yang tersedia dalam bentuk kode sumber tanpa adanya biaya yang harus diberikan ke pengembangnya', 100),
(59, 16, 'Multiplexer adalah peralatan elektronik yang memungkinkan sebuah saluran komunikasi untuk membawa transmisi data secara bersamaan dari banyak sumber', 100),
(60, 17, 'Proses peer-to-peer adalah jenis pemprosesan terdistribusi klien/server yang memungkinkan dua atau lebih komputer menggabungkan sumber dayanya, hingga membuat masing-masing komputer menjadi klien dan server', 100),
(61, 18, 'Bluetooth adalah teknologi nirkabel yang memungkinkan koneksi sementara berjarak pendek antar berbagai peralatan nirkabel dan memungkinkan peralatan ini berkomunikasi satu sama lain melalui frekuensi radio berdaya rendah', 100),
(62, 19, 'Sistem operasi adalah perangkat lunak yang bertugas mengendali perangkat keras secara langsung', 100),
(63, 19, 'Sistem operasi adalah sekumpulan rutin perangkat lunak yang berada di antara program aplikasi dan perangkat keras', 100),
(64, 20, 'Deadlock adalah kondisi di mana dua atau lebih proses dalam keadaan saling menunggu sumber daya komputer yang digunakan oleh proses lainnya', 100),
(65, 20, 'Deadlock adalah suatu kondisi dimana dua proses atau lebih saling menunggu proses untuk melepaskan seumber daya atau resources yang sedang dipakai', 100),
(66, 20, 'Deadlock adalah suatu kondisi dimana dua proses atau lebih saling menunggu proses yang lain untuk melepaskan resource yang sedang dipakai', 100),
(67, 21, 'Algoritma round robin penjadwalan preemptive tanpa prioritas yang menjadwalkan proses berdasarkan lama waktu berjalannya proses dan pemberian jatah waktu pemakaian prosesor dalam time slice', 100),
(68, 21, 'Round Robin merupakan salah satu penjadualan proses, dimana algoritma ini menggilir proses yang ada di antrian', 100),
(69, 22, 'Dispatcher adalah suatu rutin program yang berfungsi untuk melakukan switching eksekusi dari proses yang running ke proses yang terseleksi oleh CPU Scheduler', 100),
(70, 22, 'Dispatcher adalah rutin sistem operasi yang berfungsi untuk melakukan pengalihan eksekusi dari proses yang running ke proses yang terseleksi oleh short-term scheduler', 100),
(71, 23, 'Metode akses berkas yang cara kerjanya adalah untuk mengakses data di posisi tertentu dalam berkas pembacaaan harus dimulai dari asal berkas sampai ke posisi yang dikenendaki', 100),
(72, 23, 'Sequential Access Method dilakukan dengan membaca atau menulis suatu record di file dengan membaca terlebih dahulu mulai dari record pertama, urut sampai dengan record yang diinginkan', 100),
(73, 24, 'Prosesor komunikasi adalah peranti keras yang mendukung transmisi dan penerimaan data di lantas sistem telekomunikasi', 100),
(74, 25, 'Saluran komunikasi adalah jalur untuk mengkomunikasikan data dari satu lokasi ke lokasi lainnya', 100),
(75, 26, 'Router adalah prosesor komunikasi yang meneruskan pesan melalui beberapa LAN atau wide area network', 100),
(76, 1, 'Router adalah sebuah alat yang mengirimkan paket data melalui sebuah jaringan atau Internet menuju tujuannya, melalui sebuah proses yang dikenal sebagai routing', 100),
(77, 27, 'Wide Area Network adalah jaringan yang biasanya disediakan oleh penyedia telekomunikasi umum dan yang meliputi area geografis luas', 100),
(78, 27, 'Wide Area Network merupakan jaringan komputer yang mencakup area yang besar sebagai contoh yaitu jaringan komputer antar wilayah, kota atau bahkan negara', 100),
(79, 30, 'Tunneling adalah proses pengiriman data melalui Internet dalam bentuk terenkripsi', 100),
(80, 30, 'Tunneling adalah dasar dari VPN untuk membuat suatu jaringan private melalui jaringan internet. Tunneling juga merupakan enkapsulasi atau pembungkusan suatu protokol ke dalam paket protokol.', 100),
(81, 29, 'Virtual Private Network adalah WAN yang dioperasikan oleh penyedia layanan biasa, menyediakan gerbang antara LAN dengan internet', 100),
(82, 29, 'Virtual Private Network merupakan kumpulan komputer yang terhubung secara fisik dan dapat berkomunikasi antara satu dengan yang lainnya dengan menggunakan protocol tertentu', 100),
(83, 28, 'Value added network adalah jaringan privat hanya untuk data, yang dikelola oleh pihak ketiga eksternal dan digunakan oleh beberapa perusahaan agar mendapat sisi ekomonis dalam biaya layanan jaringan serta manajemen jaringan', 100),
(84, 28, 'Value Added Network adalah tawaran layanan yang di-host yang bertindak sebagai perantara antara mitra bisnis yang berbagi data berdasarkan standar atau hak milik melalui proses bisnis bersama.', 100);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `key_materi` int(11) NOT NULL,
  `key_topik` int(11) DEFAULT NULL,
  `materi` varchar(255) NOT NULL,
  `isi_materi` varchar(255) NOT NULL,
  `is_delete` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`key_materi`, `key_topik`, `materi`, `isi_materi`, `is_delete`) VALUES
(1, 1, 'Pengenalan Komputer', '-', 0),
(2, 1, 'Peranti Keras Komputer', '-', 0),
(3, 1, 'Peranti Lunak Komputer', '-', 0),
(4, 1, 'Dasar-Dasar Jaringan dan Telekomunikasi', '-', 0),
(5, 2, 'Tinjauan Umum Sistem Operasi', '-', 0),
(6, 2, 'Konsep Proses', '-', 0),
(7, 2, 'Manajemen Proses', '-', 0),
(8, 2, 'Manajemen Disk dan Berkas', '-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengerjaan`
--

CREATE TABLE `pengerjaan` (
  `key_pengerjaan` int(11) NOT NULL,
  `key_pertanyaan` int(11) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  `key_data_pengguna` int(11) DEFAULT NULL,
  `percobaan` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengerjaan`
--

INSERT INTO `pengerjaan` (`key_pengerjaan`, `key_pertanyaan`, `jawaban`, `nilai`, `key_data_pengguna`, `percobaan`) VALUES
(1, 1, 'Data merupakan fakta pengamatan mengenai orang', 52.4591, 2, 1),
(2, 1, 'Data', 24.3956, 1, 1),
(3, 16, 'Tidak Tau', 0, 1, 1),
(4, 4, 'Komputer Adalah Sistem Rakitan', 5.46136, 2, 1),
(5, 29, 'Sad', 0, 2, 1),
(6, 1, 'Data Adalah Sebuah Informasi Atau Fakta', 19.256, 2, 2),
(7, 1, 'Kumpulan fakta fakta yang ada disekitar kita', 15.4865, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `key_data_pengguna` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `key_pengguna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`key_data_pengguna`, `nama`, `email`, `key_pengguna`) VALUES
(1, 'Satria', 'asdsad@email.com', 2),
(2, 'Tester', 'asdsdads@email.com', 3),
(5, 'Sasa', 'vcvcvvc@email.com', 6),
(6, 'Sa', 'nmnbnj@email.com', 7),
(7, 'Asddd', 'dfdf@email.com', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_auth`
--

CREATE TABLE `pengguna_auth` (
  `key_pengguna` int(11) NOT NULL,
  `key_peran` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna_auth`
--

INSERT INTO `pengguna_auth` (`key_pengguna`, `key_peran`, `username`, `password`, `otp`, `status`) VALUES
(2, 1, 'Admin', '$2y$10$wwisANoSWz/3Hq7AWXGmm./357eTLuaz2v42MSGZgL8Bs3IwEuEEq', NULL, 1),
(3, 2, 'Pelajar', '$2y$10$qI2f8meh4d.BLcOWuf/6YefHIbxgWdeGXPZpe/YWMLRDNUEYBR5l.', NULL, 1),
(6, 2, 'SatriaCobaHosting', '$2y$10$bgQ9V9Hk9uvaSOjz/akTIu4caZbH9AVOYy/WAlVuX5bzTB.sXUSg6', '', 1),
(7, 2, 'a', '$2y$10$bqzEoZENO2v6b5g6h7cTEu6st/Z9Xbip82gaHv4O0sgy2JOlc8/4K', 'db5b339a22', 0),
(8, 2, 'Aselole', '$2y$10$57Gnrp21YV16GEKpwmqWTOZ6fmWBqUcoZB4myjXazMwiakeZwPsTS', 'b791e04e89', 0);

-- --------------------------------------------------------

--
-- Table structure for table `peran`
--

CREATE TABLE `peran` (
  `key_peran` int(11) NOT NULL,
  `nama_peran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peran`
--

INSERT INTO `peran` (`key_peran`, `nama_peran`) VALUES
(1, 'Admin'),
(2, 'Pelajar');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `key_pertanyaan` int(11) NOT NULL,
  `key_materi` int(11) DEFAULT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `is_delete` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`key_pertanyaan`, `key_materi`, `pertanyaan`, `is_delete`) VALUES
(1, 1, 'Apa definisi dari data ?', 0),
(2, 1, 'Apa definisi dari informasi ?', 0),
(3, 1, 'Apa definisi dari teknologi informasi ?', 0),
(4, 1, 'Jelaskan pengertian komputer', 0),
(5, 2, 'Jelaskan pengertian mainframe', 0),
(6, 2, 'Jelaskan pengertian keyboard', 0),
(7, 2, 'Jelaskan pengertian scanner', 0),
(8, 2, 'Jelaskan pengertian register', 0),
(9, 2, 'Jelaskan pengertian ROM', 0),
(10, 2, 'Jelaskan pengertian RAM', 0),
(11, 2, 'Sebutkan satu karakteristik penyimpanan sekunder', 0),
(12, 3, 'Jelaskan pengertian bahasa mesin', 0),
(13, 3, 'Jelaskan pengertian peranti lunak sistem', 0),
(14, 3, 'Jelaskan pengertian peranti lunak aplikasi', 0),
(15, 3, 'Apa definisi dari peranti lunak open-source ?', 0),
(16, 4, 'Apa itu multiplexer ?', 0),
(17, 4, 'Apa itu proses peer-to-peer?', 0),
(18, 4, 'Apa itu bluetooth', 0),
(19, 5, 'Jelaskan pengertian sistem operasi', 0),
(20, 6, 'Jelaskan apa itu kondisi deadlock', 0),
(21, 7, 'Jelaskan Algoritma Round Robin', 0),
(22, 7, 'Jelaskan apa itu dispatcher ?', 0),
(23, 8, 'Sequential Access Method adalah', 0),
(24, 4, 'Jelaskan prosesor komunikasi', 0),
(25, 4, 'Jelaskan saluran komunikasi', 0),
(26, 1, 'Jelaskan pengertian router', 0),
(27, 1, 'Jelaskan Wide Area Network', 0),
(28, 4, 'Jelaskan Value Added Network', 0),
(29, 4, 'Jelaskan Virtual Private Network', 0),
(30, 4, 'Jelaskan tunneling', 0);

-- --------------------------------------------------------

--
-- Table structure for table `topik`
--

CREATE TABLE `topik` (
  `key_topik` int(11) NOT NULL,
  `topik` varchar(255) DEFAULT NULL,
  `is_delete` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topik`
--

INSERT INTO `topik` (`key_topik`, `topik`, `is_delete`) VALUES
(1, 'Pengantar Teknologi Informasi', 0),
(2, 'Sistem Operasi', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`key_jawaban`),
  ADD KEY `fk_jawaban_pertanyaan_key_pertanyaan` (`key_pertanyaan`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`key_materi`),
  ADD KEY `fk_materi_topik_key_topik` (`key_topik`);

--
-- Indexes for table `pengerjaan`
--
ALTER TABLE `pengerjaan`
  ADD PRIMARY KEY (`key_pengerjaan`),
  ADD KEY `fk_pengerjaan_pengguna_key_data_pengguna` (`key_data_pengguna`),
  ADD KEY `fk_pengerjaan_pertanyaan_key_pertanyaan` (`key_pertanyaan`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`key_data_pengguna`),
  ADD KEY `fk_pengguna_pengguna_auth_key_pengguna` (`key_pengguna`);

--
-- Indexes for table `pengguna_auth`
--
ALTER TABLE `pengguna_auth`
  ADD PRIMARY KEY (`key_pengguna`),
  ADD KEY `fk_pengguna_auth_peran_key_peran` (`key_peran`);

--
-- Indexes for table `peran`
--
ALTER TABLE `peran`
  ADD PRIMARY KEY (`key_peran`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`key_pertanyaan`),
  ADD KEY `fk_pertanyaan_materi_key_materi` (`key_materi`);

--
-- Indexes for table `topik`
--
ALTER TABLE `topik`
  ADD PRIMARY KEY (`key_topik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `key_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `key_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengerjaan`
--
ALTER TABLE `pengerjaan`
  MODIFY `key_pengerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `key_data_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pengguna_auth`
--
ALTER TABLE `pengguna_auth`
  MODIFY `key_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peran`
--
ALTER TABLE `peran`
  MODIFY `key_peran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `key_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `topik`
--
ALTER TABLE `topik`
  MODIFY `key_topik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `fk_jawaban_pertanyaan_key_pertanyaan` FOREIGN KEY (`key_pertanyaan`) REFERENCES `pertanyaan` (`key_pertanyaan`);

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `fk_materi_topik_key_topik` FOREIGN KEY (`key_topik`) REFERENCES `topik` (`key_topik`);

--
-- Constraints for table `pengerjaan`
--
ALTER TABLE `pengerjaan`
  ADD CONSTRAINT `fk_pengerjaan_pengguna_key_data_pengguna` FOREIGN KEY (`key_data_pengguna`) REFERENCES `pengguna` (`key_data_pengguna`),
  ADD CONSTRAINT `fk_pengerjaan_pertanyaan_key_pertanyaan` FOREIGN KEY (`key_pertanyaan`) REFERENCES `pertanyaan` (`key_pertanyaan`);

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `fk_pengguna_pengguna_auth_key_pengguna` FOREIGN KEY (`key_pengguna`) REFERENCES `pengguna_auth` (`key_pengguna`);

--
-- Constraints for table `pengguna_auth`
--
ALTER TABLE `pengguna_auth`
  ADD CONSTRAINT `fk_pengguna_auth_peran_key_peran` FOREIGN KEY (`key_peran`) REFERENCES `peran` (`key_peran`);

--
-- Constraints for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD CONSTRAINT `fk_pertanyaan_materi_key_materi` FOREIGN KEY (`key_materi`) REFERENCES `materi` (`key_materi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
