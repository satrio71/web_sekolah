-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Jul 2022 pada 09.45
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `id` int(3) NOT NULL,
  `nama_agenda` varchar(100) NOT NULL,
  `berapa_hari` int(3) NOT NULL,
  `tgl` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `jam_mulai` varchar(20) NOT NULL,
  `jam_selesai` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_agenda`
--

INSERT INTO `tb_agenda` (`id`, `nama_agenda`, `berapa_hari`, `tgl`, `tgl_mulai`, `tgl_selesai`, `jam_mulai`, `jam_selesai`, `keterangan`, `tempat`, `gambar`, `slug`) VALUES
(1, 'Rakor Panitia Rapat Komite dengan Wali Siswa', 1, '2020-10-27', '0000-00-00', '0000-00-00', '09:00', '12:00', '', 'Meeting Room', '', 'rakor-panitia-rapat-komite-dengan-wali-siswa'),
(2, 'Rakor Panitia PPDB TP 2021/2022', 1, '2021-01-25', '0000-00-00', '0000-00-00', '13:00', '15:00', '', 'Meeting Room', '3401b24ed446bba07f9402428804b015.jpg', 'rakor-panitia-ppdb-tp-2021-2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_album`
--

CREATE TABLE `tb_album` (
  `id_album` int(3) NOT NULL,
  `album` varchar(50) NOT NULL,
  `is_active` int(1) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_album`
--

INSERT INTO `tb_album` (`id_album`, `album`, `is_active`, `slug`, `tgl`) VALUES
(1, 'Madrasah', 1, 'madrasah', '2022-05-29 13:14:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alumni`
--

CREATE TABLE `tb_alumni` (
  `id` int(3) NOT NULL,
  `id_tahun` int(3) NOT NULL,
  `jml_l` int(3) NOT NULL,
  `jml_p` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id` int(2) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `link` varchar(300) NOT NULL,
  `button` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `gambar`, `judul`, `keterangan`, `link`, `button`, `is_active`) VALUES
(1, 'c399e9b153863b3c280b73f41a792693.jpg', '', '', '', '', 1),
(2, '38776e25423f98fe7441d9dbef89db9b.jpg', 'Alur Pendaftaran Peserta Didik Baru MAN 3 Kebumen', 'Tahun Pelajaran 2022/2023', 'https://ppdb.man3kebumen.sch.id/home', 'HALAMAN PPDB', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `dibaca` int(5) NOT NULL,
  `id_user` int(2) NOT NULL,
  `is_active` int(1) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `tgl` datetime NOT NULL,
  `slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `nama`, `isi`, `gambar`, `dibaca`, `id_user`, `is_active`, `hari`, `tgl`, `slug`) VALUES
(1, 'Penilaian Kinerja Kepala Madrasah MAN 3 Kebumen', 'Penilaian Kinerja Kepala Madrasah (PKKM) merupakan proses pengumpulan, pengolahan, analisis, dan interpretasi data tentang kualitas kepala madrasah dalam melaksanakan tugasnya sebagai kepala madrasah. Penilaian ini dilakukan secara berkala dalam periode tahunan (setiap tahun sekali) dan empat tahunan. Hal ini mengacu pada Surat keputusan Dirjen Pendis Kementerian Agama Nomor 1111 Tahun 2019 tentang Petunjuk Teknis Penilaian Kinerja Kepala Madrasah sebagai bentuk implementasi PMA Nomor 24 Tahun 2018 tentang Kepala Madrasah. Pada regulasi tersebut, mensyaratkan adanya penilaian terhadap kepala madrasah.<p></p><p><span xss=removed>Pada hari Selasa(20/10/20) telah diadakan Penilaian kinerja kepala madrasah MAN 3 Kebumen tahun 2020 bertempat di ruang meeting. Dalam penilaian PKKM, tim penilai didampingi oleh kepala MAN 3 Kebumen, Waka beserti tim, dan Kepala tata usaha Hj. Siti Sangadah beserta staf. Kegiatan PKKM ini dimulai pada jam 08.00 Wib dan berakhir jam 14.00 WIB. PKKM yang dilakukan saat ini adalah penilaian empat tahunan.</span><br></p>', '50485256ed668071a1f746874499a629.jpg', 18, 1, 1, 'Senin', '2022-05-29 12:57:39', 'penilaian-kinerja-kepala-madrasah-man-3-kebumen'),
(2, 'Upacara HAB Kemenag RI KE 75 Di MAN 3 Kebumen', '<p class="MsoNormal" xss=removed><span xss=removed>Selasa, 5 Januari\r\n2020 dilaksanakan Upacara Hari Amalan Bakti KEMENAG RI Ke 75 di lapangan MAN 3\r\nKebumen di ikuti oleh Guru dan Pegawai MAN 3 Kebumen.<o></o></span></p><p class="MsoNormal" xss=removed><span xss=removed>Dalam sambutannya\r\nKepala madrasah menyampaikan tema Hari Amal Bakti Kemenag RI Ke 75 yaitu\r\n"Indonesia Rukun". Akhir-akhir ini di negara Indonesia sedang\r\nmengalami krisis kerukunan. "Konsep agama bersifat universal sehingga\r\napapun pemikiran manusia bisa dizalimi dengan dalil agama, yg terpenting adalah\r\nmengendalikan hawa nafsu dengan tidak menganggap pendapat sendiri yang paling\r\nbenar karena ketika manusia mengikuti hawa nafsu akan terpecah belah, maka inti\r\ndari kerukunan adalah mengendalikan hawa nafsu untuk kepentingan bersama."<o></o></span></p><p class="MsoNormal" xss=removed><span xss=removed>"Ketika kita\r\nbersatu untuk mementingkan kepentingan bersama dengan melakukan musyawarah yg\r\nbaik akan melahirkan keputusan yang terbaik."<o></o></span></p><p class="MsoNormal" xss=removed><span xss=removed>"Keyakinan\r\nberagama adalah Hak ketetapan Alloh, manusia lahir di Bumi tidak bisa memilih\r\nlahir dengan beragama apa, tetapi Allohlah yang berkehendak jika Alloh ingin\r\nmenyelamatkannya.<o></o></span></p><p class="MsoNormal" xss=removed><span xss=removed>Yakini apa yang\r\nsedang kita yakini sekarang, mdh2n Alloh memberikan pertolongan untuk kita\r\nsemua." Drs. Muntohar</span></p>', '340823c3822c89b61675d28720bd571d.jpg', 19, 1, 1, 'Kamis', '2022-05-29 12:55:13', 'upacara-hab-kemenag-ri-ke-75-di-man-3-kebumen'),
(3, 'Kepala MAN 3 Kebumen resmi dilantik menjadi Kepala MAN 2 Cilacap, siapa gantinya? ', '<p class="MsoNormal" xss="removed" xss=removed><em><span xss=removed><font size="6">Momen </font></span></em><font size="3">perpisahan adalah sesuatu yang sangat tidak menyenangkan. Apakah itu perpisahan dalam hubungan antar teman, antar sahabat atau hubungan cinta dengan kekasih. Akan ada rasa sedih, sakit, perih bahkan kecewa yang teramat sangat. Namun bila kita bijak menyikapi setiap moment perpisahan yang datang menghampiri, meski berasa berat yang semua akan menjadi baik baik saja. dalam memori akan tersimpan beberapa hal kalau dibuat perjalanan kebelakang</font></p><p class="MsoNormal" xss="removed" xss=removed><font size="3">Begitu juga dengan acara Pisah Sambut Kepala Madrasah MAN 3 Kebumen Drs. Muntohar yang pindah tugaskan di MAN 2 Cilacap. Acara yang dilaksanakan di MAN 2 Cilacap dihadiri sebagian Keluarga besar MAN 3 Kebumen dan keluarga besar MAN 2 Cilacap dengan melaksanakan protokol kesehatan yang ketat. </font></p><p class="MsoNormal" xss="removed" xss=removed><font size="3">Kepala MAN 3 Kebumen Drs. Muntohar dilantik secara resmi menjadi Kepala MAN 2 Cilacap bersama pejabat-pejabat lain di Aula Kanwil Kemenag Jateng pada hari Senin, 18 Januari 2020 dan untuk sementara ini sebagai gantinya mulai tanggal 19 Januari 2020 kepala MAN 3 Kebumen digantikan oleh Plt. Kepala Madrasah yakni </font><span xss="removed">Drs. H. Wachid Adib, M.Si. yang sekarang menjabat sebagai Kepala MAN 2 Kebumen. </span></p><p class="MsoNormal" xss="removed" xss=removed><span xss="removed"><font color="#333333" face="Geneva, Arial, Helvetica, sans-serif">Kami segenap keluarga besar MAN 3 Kebumen mengucapkan terimakasih dan penghargaan yg setinggi-tingginya atas pengabdian dan pengorbanan bapak Drs. Muntohar yang selama 4 tahun ini telah mengabdikan diri di MAN 3 Kebumen dengan segenap jiwa raga, semoga ketulusan pengabdian bapak di MAN 3 Kebumen tercatat sebagai amal sholeh dan mudah-mudahan mampu mengemban amanah di tempat yang baru dengan semangat baru.</font></span></p>', '6c9b9f3b276d29cf23784022e55bfa41.jpg', 190, 1, 1, 'Sabtu', '2022-05-29 12:51:01', 'kepala-man-3-kebumen-resmi-dilantik-menjadi-kepala-man-2-cilacap-siapa-gantinya'),
(5, 'RAT Koperasi Tenteram MAN 3 Kebumen', '<p>Kamis, 28 Januari 2021, Koperasi Tenteram MAn 3 Kebumen menggelar rapat anggota tahunan (RAT). Acara dilaksanakan di ruang pertemuan pada pukul 08.00 wib dengan dihadiri oleh seluruh anggota koperasi. Hadir pula dalam rapat tersebut perwakilan dari dinas koperasi untuk memberikan pengarahan dan masukan. Di tahun 2020 kemarin, koperasi Tenteram memperoleh kenaikan laba yang signifikan yang artinya koperasi Tenteram MAN 3 Kebumen semakin berkembang. Karena hasil kerja yang memuaskan di tahun sebelumnya, maka pengurus koperasi Tenteram tahun 2020 kembali terpilih di tahun 2021 ini.<br></p>', '9fc1a2182923c3af3c5bbd2123cfe5af.JPG', 90, 1, 1, 'Selasa', '2022-05-29 10:57:23', 'rat-koperasi-tenteram-man-3-kebumen'),
(6, 'Suasana Haru mengiringi acara pelepasan 3 orang sekaligus', '<p class="MsoNormal" xss="removed"><span xss="removed">Lepas Sambut Kepala\r\nMadrasah sekaligus purna tugas guru serta pindah tugas CPNS.<o></o></span></p><p class="MsoNormal" xss="removed"><span xss="removed"><span xss=removed>Promosi dan mutasi\r\nbagi pejabat di lingkungan pemerintahan adalah sesuatu hal yang biasa sebagai\r\nupaya penyegaran dalam pelaksanaan kegiatan pemerintahan. Hal ini terjadi\r\nsecara periodik, baik pejabat di tingkat pusat maupun pejabat di daerah.\r\nDemikian pula halnya dengan pejabat kepala madrasah pada madrasah negeri di\r\nlingkungan kanwil Kemenag Jateng. Salah satunya adalah Kepala MAN 3 Kebumen,\r\nDrs. Muntohar yang mutasi ke MAN 2 Cilacap.</span><br></span></p><p class="MsoNormal" xss="removed"><span xss="removed"><span xss=removed>Sebagai tindak\r\nlanjutnya maka digelar acara Lepas Sambut kepala madrasah yang di gelar di\r\n“Aula MAN 3 Kebumen” pada hari Senin, 1 Februari 2011. Dari Drs. Muntohar\r\nkepada H. Adib, M.Pd. Acara lepas sambut kepala madrasah yang dibarengi dengan\r\npurna tugas bapak Drs. Muhadin dan Pelepasan Guru yag diterima CPNS yakni Eko\r\nRizqasari, S.Pd, Gr yang diterima di SMAN 1 Bobotsari ini berjalan lancar dan\r\nkhidmat. Acara ditutup dengan pembacaan doa.</span><br></span></p><p class="MsoNormal" xss="removed"><span xss="removed"><span xss=removed>Dalam kata\r\nsambutannya Drs. Muntohar bahwa mutasi adalah hal biasa dan bukan luar biasa\r\nkarena hal tersebut merupakan bagian dari konsekuensi jabatan di instansi\r\nmanapun termasuk di lembaga pendidikan seperti di madrasah negeri. Pada\r\nkesempatan tersebut beliau menyampaikan ucapan terima kasih dan penghargan yang\r\nsetinggi-tingginya atas segala macam bentuk kerjsama, pengabdian dan kontribusi\r\nsetiap pendidik, tenaga kependidikan dan peserta didik selama menjadi kepala\r\nMAN 3 Kebumen yang diemban selama 4 Tahun lebih.</span><br></span></p><p class="MsoNormal" xss="removed"><span xss="removed"><span xss=removed>Pada bagian lain sambutan\r\nbeliau juga menyampaikan pula permohonan maaf bila selama memimpin MAN 3\r\nKebumen ada sikap, tutur kata maupun kebijakan-kebijakan yang kurang berkenan\r\ndi hati. semua kebijakan hanya semata-mata niat karena Alloh untuk kemaslahatan\r\nbersama. sambutan selanjutnya oleh bapak Drs.H. Muhadin dan Bapak Eko\r\nRizqasari.</span><br></span></p><p class="MsoNormal" xss="removed"><span xss="removed"><span xss=removed>Selamat kpd Bpk\r\nDrs. Muntohar menjalankan Tugas Baru di MAN 2 Cilacap, Selamat purna Tugas\r\nkepada Bpk Drs. H. Muhadin yang telah mengabdikan diri selama di MAN 3 Keumen,\r\ndan selamat Sukses kepada Bpk Eko Rizqasari, S.Pd, Gr telah diterima CPNS di\r\nSMAN 1 Bobotsari. semoga silaturahmi selalu terjalin dengan baik.</span><br></span></p>', '3baeb8c579e65f89659502c64cad2105.jpg', 183, 1, 1, 'Selasa', '2022-05-29 12:54:26', 'suasana-haru-mengiringi-acara-pelepasan-3-orang-sekaligus'),
(7, 'Penyerahan Hadiah Lomba Tk. SMP/MTs se Kabupaten Kebumen dalam rangka HUT MAN 3 Kebumen ke 43', '<p>Penyerahan Hadiah Lomba Dalam Rangka Hari Ulang Tahun MAN 3 Kebumen ke 43.</p><p><span xss=removed>Sabtu, 20 Maret 2021 penyerahan hadiah lomba HUT MAN 3 Kebumen berlangsung dengan lancar dengan menaati protokol kesehatan secara ketat. dihadiri siswa SMP/mts sebagai pemenang lomba dan guru pendampingnya smp/mts se kabupaten kebumen. </span><br></p><p><span xss=removed>Alhamdulilah kali pertama MAN 3 Kebumen mengadakan Lomba secara daring dikarenakan masih mewabahnya Covid 19, tetapi hal ini tidak menyurutkan semangat siswa SMP/MTs untuk mengikutinya terbukti peserta lomba yang mengikuti lomba cukup banyak. </span><br></p><p><span xss=removed>"Kami mengucapkan terimakasih atas partisipasi dan Selamat atas prestasi yang telah diraih, selain mengasah kemampuan berkompetisi semoga ajang ini mampu meningkatkan prestasi di masa yg akan datang dan meningkatkan tali silaturahmi MAN 3 Kebumen dengan SMP/mts di kabupaten Kebumen khususnya.'' sambut ketua panitia</span><br></p><p><span xss=removed>Selain Piala, Piagam dan Uang Pembinaan MAN 3 Kebumen memberikan tambahan hadiah bagi juara lomba, dapat 2 stel seragam gratis dan bebas SPI setahun (1.750.000) bagi melanjutkan di MAN 3 Kebumen</span><br></p><p><br></p><p>#LombaHUTManega21</p><p>#man3kebumen</p><p>#madrasahhebatbermartabat</p><p>#marsmadrasah</p>', '188ebad836b77e79a2774e7e7a1a009a.jpg', 192, 1, 1, 'Sabtu', '2022-05-29 12:56:52', 'penyerahan-hadiah-lomba-tk-smp-mts-se-kabupaten-kebumen-dalam-rangka-hut-man-3-kebumen-ke-43'),
(8, 'Pisah sambut Kamad MAN 3 Kebumen disambut taburan prestasi', '<p xss=removed>Kebumen – Sabtu (28/08) bertempat di aula setempat, MAN 3 Kebumen mengadakan acara Pisah sambut Kepala Madrasah dari pejabat lama Wachid Adib ke pejabat baru Achmad Sultoni. Dengan protocol kesehatan 5M + 1D, acara digelar secara sederhana dan dihadiri oleh Kasi Pendidikan Madrasah Kemenag Kebumen Hj. Suwaibatul Aslamiyah, Forkompimcam para Guru dan Pengawas. Berkenan hadir mewakili Kepala Kankemenag Kab. Kebumen, Kasubbag TU H. Khamid.</p><p xss=removed>Adalah sebuah kebanggaan tersendiri bagi civitas MAN 3 Kebumen, karena bertepatan dengan acara pisah sambut ini, Wachid Adib pejabat lama yang berpamitan mengabarkan bahwa 5 (lima) siswa MAN 3 Kebumen berhasil menjadi juara pada ajang Kompetisi Sains Madrasah (KSM) tahun 2021 Tingkat Kabupaten Kebumen.</p><p xss=removed><strong xss=removed>Pertama</strong>,  Ani Setiyawati juara 1 (satu) mapel Fisika Terintegrasi. <strong xss=removed>Kedua</strong>, Kenia Ratna Azizah juara 1 (satu) mapel Matematika Terintegrasi. <strong xss=removed>Ketiga,</strong> Arman Syarif juara 3 (tiga) mapel Geografi Terintegrasi. <strong xss=removed>Keempat</strong> adalah Fini Aulia Fikriyani juara 2 (dua) mapel Ekonomi Terintegrasi. Dan yang <strong xss=removed>kelima</strong> Fathu Silmi Suryani Juara harapan III (tiga) mapel Biologi Terintegrasi.</p><p xss=removed>Selain itu, Wachid Adib juga menyampaikan bahwa pada penilaian Akreditasi Madrasah tahun ini, MAN 3 Kebumen berhasil menjadi yang terbaik diantara madrasah lainnya di Kebumen.“Tentu ini adalah prestasi yang sangat membanggakan bagi kita bersama seluruh civitas MAN 3 Kebumen,” ujar Wachid Adib.</p><p xss=removed>“Untuk itu saya mengucapkan banyak terimakasih dan apresiasi setinggi – tingginya kepada seluruh Bapak/Ibu Guru/Pegawai dan semuanya yang telah bekerja keras selama ini. Semoga MAN 3 Kebumen lebih maju kedepannya bersama Kepala Madrasah yang baru, dan hari ini saya mohon izin pamit serta mohon doa restu semuanya,” ucap Wachid Adib saat berpamitan.</p><p xss=removed>Perasaan yang sama juga disampaikan oleh Kasubbag TU H. Khamid saat menyampaikan sambutannya mewakili Kepala Kankemenag. Dia menyampaikan rasa terimakasih dan bangga atas pencapaian MAN 3 Kebumen selama dipimpin oleh Wachid Adib. “Atas nama Kantor Kementerian Agama Kabupaten Kebumen, Saya ucapkan selamat dan terimakasih atas pencapaian bersama seluruh civitas MAN 3 Kebumen,” ucapnya.</p><p xss=removed>Sementara itu, Kepada pejabat baru Kasubbag TU mengucapkan selamat datang dan selamat bergabung dengan keluarga besar Kantor Kementerian Agama Kabupaten Kebumen khususnya MAN 3 Kebumen. Dia mendoakan semoga MAN 3 Kebumen lebih maju lagi dibawah pimpinan Kepala Madrasah baru yang lebih muda dan bersemangat. “Semoga di tangan Pak Sultoni MAN 3 Kebumen menjadi lebih maju dan sekses,” ujar H. Khamid.(fz).</p><p xss=removed>Copy from : http://kebumen.kemenag.go.id/berita/read/pisah-sambut-kepala-man-3-kebumen-disambut-taburan-prestasi-</p><p xss=removed><br></p><p xss=removed><br></p><p xss=removed><br></p>', '2c15ba8e0205cccb30a9efc5b71a5818.jpg', 231, 1, 1, 'Sabtu', '2021-08-28 19:19:10', 'pisah-sambut-kamad-man-3-kebumen-disambut-taburan-prestasi'),
(9, 'MAN 3 Kebumen membuka Pelatihan Ketrampilan dan Kewirausahaan ', '<p><span xss=removed>Madrasah Aliyah Negeri 3 Kebumen menggelar kegiatan Job Skill Training (JST) Angkatan III dan IV Tahun 2021/2022 mulai Senin, 11 Oktober 2021. Pembukaan pelatihan Job Skill Training ini dilaksanakan di Meeting Room dan dihadiri oleh Kepala Disnaker KUKM Kabupaten Kebumen yang diwakilkan oleh Kasi Penempatan Dalam dan Luar Negeri Bapak Heru Setyanto, S.Sos.Map, Pimpinan Hasta Multimedia Bapak Ali Hasan Basri, S.Kom, Pimpinan LPK Grizella Ibu Marsiyem, dan Pimpinan Dapur Maryam Ibu One Sid Dian.</span></p><p><br></p><p>Dalam acara Pembukaan Job Skill Training ini, Kepala MAN 3 Kebumen Bapak Ahmad Sultoni, S.Pd.I, M.Pd menyatakan bahwa kegiatan pelatihan ini diharapkan sebagai awal mula MAN 3 Kebumen menuju Madrasah Aliyah Program Keahlian (MAPK). Dan selanjutnya para peserta diharapkan untuk bersemangat menimba ilmu sebanyak-banyaknya.</p><p><br></p><p>Kemudian dalam sambutannya, Kasi Penempatan Dalam dan Luar Negeri Bapak Heru Setyanto, S.Sos.Map mengapresiasi kegiatan ini dan semoga kegiatan pelatihan ini dapat diikuti oleh sekolah-sekolah lain. </p><p><br></p><p>Program Job Skill Training ini dimaksudkan untuk memberikan keterampilan kepada siswa-siswi MAN 3 Kebumen agar mempunyai keahlian dan keterampilan untuk bekal hidup di masyarakat. Untuk tahun ini, program keahlian yang diajarkan adalah Multimedia, Tata Busana, dan Tata Boga. Adapun peserta yang mengikuti program pelatihan ini adalah Multimedia sebanyak 40 siswa, Tata Busana 48 siswa dan Tata Boga 24 siswa . (dp/15.10.21)</p><p>.</p><p>.</p><p>.</p><p>#man3kebumen</p><p>#manega</p><p>#manega_gemilang</p><p>#jst_manega</p><p>#madrasahhebatbermartabat</p>', '925d36f7a1f82f595f3775a472fe27a6.jpg', 174, 1, 1, 'Senin', '2022-05-29 12:49:16', 'man-3-kebumen-membuka-pelatihan-ketrampilan-dan-kewirausahaan'),
(10, 'Pelantikan OSIS MAN 3 Kebumen berlangsung khidmat dengan terapkan Protokol Kesehatan', '<p><span xss="removed">Di masa PTM new normal  ini, terlihat suasana belajar sudah berjalan kondusif di MAN 3 Kebumen. Tidak terkecuali dengan kegiatan lainnya seperti pemilihan pengurus OSIS, pemilihan ketua OSIS secara demokrasi, Setelah pemilihan Ketua OSIS pekan lalu, pelaksanaan pelantikan pengurus OSIS Periode 2021/2022 dilaksanakan pada hari ini.</span><br></p><p><span xss=removed>Senin, 18 Oktober 2021 dilaksanakan apel pelantikan OSIS MAN 3 Kebumen Periode 2021/2022. Dilaksanakan di lapangan MAN 3 Kebumen dan dibuka dengan masuknya barisan yang gagah dan rapih para calon pengurus OSIS membuat prosesi apel pelantikan semakin terasa khidmat.</span><br></p><p><span xss=removed>Apel diikuti oleh seluruh Guru, Karyawan, dan Siswa sesi 1 (absensi ganjil). Apel pagi dimulai sejak  pukul 06.45 sampai dengan 07.30. Pelaksanaan apel tentunya tetap memperhatikan protokol kesehatan yang ada. Seluruh guru dan siswa tetap memakai masker dan berjarak. Selain itu, petugas kesehatan atau PMR madrasah juga siap siaga dalam pelaksanaan apel pagi itu.</span><br></p><p><span xss=removed>Apel pelantikan pengurus OSIS Periode 2021/2022 dikukuhkan langsung oleh Bapak Kepala Madrasah, Ahmad Sultoni, S.Pd, M.Pd. Dimulai dari penandatangan serah terima jabatan Pengurus OSIS Periode 2021/2022 dilanjutkan pembacaan sumpah jabatan dan pemberian sambutan pelantikan pengurus OSIS. Kepala MAN 3 Kebumen  berpesan agar calon pengurus OSIS nantinya dapat memberikan contoh kepada siswa lain dan ikut mengharumkan nama madrasah. </span><br></p><p><span xss=removed>Setelah apel pelantikan selesai dilanjutkan ucapan selamat dari Guru dan Karyawan kepada Pengurus OSIS MAN 3 Kebumen Periode 2012/2022</span><br></p>', '77aea61073bf8fa1cf7474805d0026e4.jpg', 249, 1, 1, 'Senin', '2022-05-29 12:55:56', 'pelantikan-osis-man-3-kebumen-berlangsung-khidmat-dengan-terapkan-protokol-kesehatan'),
(11, 'Sertijab dan Pengukuhan Pengurus PMR WIRA MAN 3 Kebumen 2021/2022 ', '<p>Kutowinangun, 26/02. PMR WIRA MAN 3 Kebumen resmi menyerahkan jabatannya kepada pengurus masa bakti 2021/2022. Serah terima jabatan ini dilakukan di ruang digital MAN 3 Kebumen, Kutowinangun, Kebumen. Upacara yang diikuti oleh 18 pengurus lama periode 2020/2021 dan 13 pengurus baru 2021/2022 ini, dilaksanakan dengan khidmat.</p><p><br></p><p>Selain itu, pergantian kepengurusan tahun ini juga merupakan pergantian pengurus angkatan yang ke-3 sejak berdirinya ekstrakurikuler PMR. Dalam sambutannya, Pak Teguh selaku pembina PMR menyampaikan, “Saya mengucapkan selamat datang kepada  pengurus baru PMR Wira MAN 3 Kebumen. Terimakasih saya ucapkan  kepada pengurus lama atas kerja kerasnya dalam melaksanakan kegiatan PMR selama masa kepengurusan kalian.“</p><p><br></p><p>Sementara itu, Kak Imroatul, selaku Ketua lama ektrakurikuler mengatakan, “Saya dan rekan-rekan ASIP 2020/2021 meminta maaf barangkali selama membimbing dan belajar bersama kalian, ada banyak kesalahan dan kekurangan. Saya juga berharap semoga ilmu yang kalian dapatkan dari ekstrakurikuler PMR ini dapat bermanfaat dan semoga bisa memajukan PMR MAN 3 Kebumen.” </p><p>Sambutan dari Kak Imroatul kemudian diakhiri dengan pemberian tepuk tangan bagi para pengurus baru.</p><p><br></p><p>Tri Olifia, selaku Ketua baru mengatakan, “Sebelumnya terima kasih atas kepercayaan yang telah diberikan kepada saya untuk menjadi Ketua PMR WIRA MAN 3 Kebumen periode 2021/2022. Atas nama ketua baru dan atas nama pribadi, saya memohon juga kepada Ibu/Bapak dan rekan-rekan sekalian untuk bersama-sama menjalankan amanat ini.”</p><p>Sambutan diakhiri dan dilanjutkan dengan penandatangan SK oleh Pembina, Ketua lama, serta Ketua baru.</p>', '29ddd7a8c7ee7f8499dcb0715390260c.jpeg', 105, 1, 1, 'Sabtu', '2022-02-26 21:39:08', 'sertijab-dan-pengukuhan-pengurus-pmr-wira-man-3-kebumen-2021-2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_download`
--

CREATE TABLE `tb_download` (
  `id` int(4) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `file` varchar(250) NOT NULL,
  `tgl_upload` datetime NOT NULL,
  `hits` int(5) NOT NULL,
  `id_user` int(2) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_download`
--

INSERT INTO `tb_download` (`id`, `nama_file`, `file`, `tgl_upload`, `hits`, `id_user`, `is_active`) VALUES
(1, 'Rencana Pengembangan Madrasah', 'RPM.docx', '2021-01-14 11:09:32', 11592, 1, 1),
(2, 'Program Kewirausahaan', 'PROGRAM_PENGEMBANGAN_KEWIRAUSAHAAN.docx', '2021-01-14 11:09:59', 5533, 1, 1),
(3, 'PP No 30 Tahun 2019 Tentang SKP', 'PP-Nomor-30-Tahun-2019.pdf', '2021-01-14 11:12:01', 78, 1, 1),
(4, 'PTK UKIN PENINGKATAN PRESTASI BELAJAR AKIDAH AKHLAK MATERI KISAH KETELADANAN FATIMAH AZ-ZAHRA ', 'PTK_UKIN.pdf', '2021-11-29 07:27:07', 56, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ekstrakurikuler`
--

CREATE TABLE `tb_ekstrakurikuler` (
  `id` int(3) NOT NULL,
  `nama_ekstrakurikuler` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `slug` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_foto`
--

CREATE TABLE `tb_foto` (
  `id_foto` int(3) NOT NULL,
  `id_album` int(3) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_foto`
--

INSERT INTO `tb_foto` (`id_foto`, `id_album`, `foto`, `uploaded_on`) VALUES
(1, 1, '4eca7b0c8a5ba1d8f3083089542b6e53.jpg', '2021-01-14 11:05:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `duk` int(11) NOT NULL,
  `niplama` varchar(25) NOT NULL,
  `nuptk` varchar(25) NOT NULL,
  `nokarpeg` varchar(12) NOT NULL,
  `golruang` varchar(5) NOT NULL,
  `statuspeg` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmt_cpns` date NOT NULL,
  `tmt_pns` date NOT NULL,
  `jk` char(1) NOT NULL,
  `agama` char(1) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pt` varchar(60) NOT NULL,
  `tingkat_pt` varchar(20) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `th_lulus` varchar(4) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `statusguru` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id`, `nip`, `duk`, `niplama`, `nuptk`, `nokarpeg`, `golruang`, `statuspeg`, `nama`, `tmp_lahir`, `tgl_lahir`, `tmt_cpns`, `tmt_pns`, `jk`, `agama`, `alamat`, `pt`, `tingkat_pt`, `prodi`, `th_lulus`, `jabatan`, `gambar`, `status`, `email`, `statusguru`) VALUES
(1, '196904301994031001', 0, '', '5762747648200002', '', '', 'PNS', 'Drs. Muntohar', 'Banyumas', '1969-04-30', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(2, '196105141988031003', 0, '', '1846739640200022', '', '', 'PNS', 'Rofiq Haryadi, S.Pd', 'Kebumen', '1961-05-14', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'BP/BK'),
(3, '196309121991032002', 0, '', '9244741642300043', '', '', 'PNS', 'Dra. Hj. Hani Mulhimah', 'Kebumen', '1963-09-12', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(4, '196101121992031001', 0, '', '3444739640200032', '', '', 'PNS', 'Drs. H. Muhadin', 'Kebumen', '1961-01-12', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(5, '196408081992032002', 0, '', '7140742643300053', '', '', 'PNS', 'Dra. Sri Mulyani', 'Kebumen', '1964-08-08', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(6, '196608201993031002', 0, '', '4152744647200033', '', '', 'PNS', 'Drs. H. Yusuf Kuswantoro', 'Kebumen', '1966-08-20', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(7, '196704211993032001', 0, '', '6753745647300072', '', '', 'PNS', 'Dra. Hj. Romsiyatun', 'Kebumen', '1967-04-21', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(8, '197221101998031001', 0, '', '4433750652110043', '', '', 'PNS', 'H. Mokhamad Wakhidin, S.Pd', 'Kebumen', '1972-11-01', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(9, '197611182000032001', 0, '', '4450754655300013', '', '', 'PNS', 'Hj. Ngaisah, S.Ag', 'Kebumen ', '1976-11-18', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(10, '197411032001122002', 0, '', '3435752653300013', '', '', 'PNS', 'Hj. Sri Lestari Rahayu, S.Pd', 'Kebumen', '1974-11-03', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(11, '197211082002122003', 0, '', '1440750652300053', '', '', 'PNS', 'Hj. Siti Badriyah, S.Pd', 'Kebumen', '1972-11-08', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(12, '197707102006041011', 0, '', '1042755657200033', '', '', 'PNS', 'Muhamad Hidayatuloh, S.Pd', 'Purworejo', '1977-07-10', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(13, '196805182003121003', 0, '', '2685074669110032', '', '', 'PNS', 'Fahtiyono, S.Pd', 'Kebumen', '1975-05-06', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(14, '197330252006042004', 0, '', '9657751653210062', '', '', 'PNS', 'Susanti Waluyoningsih, S.Pd', 'Purbalingga', '1973-03-25', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(15, '197901272006041004', 0, '', '8459757659200012', '', '', 'PNS', 'Nurjaman, S.Pd, M.S.I', 'Cirebon', '1979-01-27', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(16, '197505182005012007', 0, '', '0853753654210062', '', '', 'PNS', 'RR Nurul Hidayah, S.Pd', 'Kebumen', '1975-05-18', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(17, '197401182005012003', 0, '', '9450752653300022', '', '', 'PNS', 'Hj. Endah Yudhaningsih, S.Pd', 'Kebumen', '1974-01-18', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(18, '196807052006042002', 0, '', '3037746649210133', '', '', 'PNS', 'Hj. Siti Khomsatun, S.Pd', 'Kebumen', '1968-07-05', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(19, '197505062006042011', 0, '', '3838753654210072', '', '', 'PNS', 'Kuntoyibah, S.Si', 'Kebumen', '1975-05-06', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(20, '197509232007012028', 0, '', '3255753655210083', '', '', 'PNS', 'Siti Chasanah, S.Pd', 'Kebumen', '1975-09-23', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(21, '197606022007012025', 0, '', '1934754655210082', '', '', 'PNS', 'Tri Wahyuningsih, S.Pd', 'Jakarta', '1976-06-02', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(22, '197406052007011048', 0, '', '3037752654110093', '', '', 'PNS', 'H. An Farchani, S.Ag, M.Pd', 'Kebumen', '1974-06-05', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(23, '197401202007011016', 0, '', '7452752653110022', '', '', 'PNS', 'Moh. Arif Budiyanto, S.Ag, M.Pd', 'Kebumen', '1974-01-20', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(24, '198001222006042013', 0, '', '8454758660210032', '', '', 'PNS', 'Endang Sukmaningtyas, S.Pd', 'Kebumen', '1980-01-22', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(25, '196912212007011919', 0, '', '6553747650110043', '', '', 'PNS', 'Lahmudin Akhmad, S.Pd', 'Kebumen', '1969-12-21', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(26, '197205072006041012', 0, '', '3839750652110072', '', '', 'PNS', 'Nur Wahyudi Mustofa, S.Ag', 'Kebumen', '1972-05-07', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(27, '197612252007012027', 0, '', '2557754656210113', '', '', 'PNS', 'Hj. R Ng Sri Purwati, S.Pd', 'Kebumen', '1976-12-25', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(28, '197604092007012016', 0, '', '8741754655210042', '', '', 'PNS', 'Puji Asih, S.Pd', 'Kebumen ', '1976-04-09', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(29, '197104212007012031', 0, '', '9753749650210062', '', '', 'PNS', 'Siti Rubingatul Fadjriyah, S.Pd', 'Purworejo', '1971-04-21', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(30, '197603312007102002', 0, '', '5663754655210042', '', '', 'PNS', 'Hindun Mubasyiroh, S.Pd', 'Purworejo', '1976-03-31', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(31, '197711172007101003', 0, '', '5449755657110043', '', '', 'PNS', 'M. Yasir, S.HI', 'Bukit Kapur', '1977-11-17', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(32, '197904142007102003', 0, '', '2746757658210122', '', '', 'PNS', 'Hj. Srining Woro Sugiarti, S.Pd.I', 'Purworejo', '0197-04-14', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(33, '198112072009012005', 0, '', '4539759660300013', '', '', 'PNS', 'Partini, S.Pd', 'Purworejo', '1981-12-07', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(34, '198602092019032019', 0, '', '''2541764665210063', '', '', 'PNS', 'Titik Kurniasari, S.Pd', 'Kebumen', '0000-00-00', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(35, '198807082019032015', 0, '', 'ID20315917188003', '', '', 'PNS', 'Idatul Fitriyah, S.Pd', 'Grobogan', '1988-07-08', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(36, '199207202019031010', 0, '', 'NPK3922900077093', '', '', 'PNS', 'Puji As''ari, S.Sy', 'Semarang', '1992-07-20', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(37, '199202182019031011', 0, '', 'ID20332045192002', '', '', 'PNS', 'M. Balighudin, S.Sy', 'Batang', '1992-02-18', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(38, '199307012019031013', 0, '', 'ID20305442193001', '', '', 'PNS', 'Muchamad Nurrohmat, S.Pd', 'Banyumas', '1993-07-01', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(39, '-', 0, '', '5155974364711003', '', '', 'GTT', 'Mohamad Muhdori, SP', 'Kebumen', '1965-12-27', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(40, '-', 0, '', '4442754665110042', '', '', 'GTT', 'Musobikhan, S.Pd.I', 'Kebumen', '1976-10-16', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(41, '-', 0, '', '1151759660210083', '', '', 'GTT', 'Tuti Khusniati, S.Pd', 'Kebumen', '1981-08-19', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(42, '-', 0, '', '7843755657210070', '', '', 'GTT', 'Astuti, S.Ag', 'Kebumen', '1977-05-11', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(43, '-', 0, '', '3451761662210102', '', '', 'GTT', 'Luluk Esti Subekti, S.Pd, M.Pd', 'Kebumen', '1983-01-19', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(44, '-', 0, '', '3834761663210122', '', '', 'GTT', 'Siti Nurkholidah, S.Pd.I', 'Kebumen', '1983-05-02', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(45, '-', 0, '', '1848757659210082', '', '', 'GTT', 'Muningah, S.Th.I', 'Kebumen', '1979-05-16', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(46, '-', 0, '', '5838758660210132', '', '', 'GTT', 'Heny Muslichah, S.Pd', 'Kebumen', '1980-05-06', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(47, '-', 0, '', '0538764665110033', '', '', 'GTT', 'Dedi Surakhman, S.Or', 'Kebumen', '1986-12-06', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(48, '-', 0, '', '8842767668110032', '', '', 'GTT', 'Teguh Ali Hidayat, S.Pd', 'Kebumen', '1989-05-10', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(49, '-', 0, '', '7554763663210022', '', '', 'GTT', 'Dhian Purwitasari, S.Pd', 'Purworejo', '1985-02-22', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'BP/BK'),
(50, '-', 0, '', '0255765667110033', '', '', 'GTT', 'Samsul Maarif, S.Pd.I', 'Kebumen', '1987-09-23', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(51, '-', 0, '', 'ID20305442191001', '', '', 'GTT', 'Retno Wahyu Nurhidayati, S.Pd', 'Kebumen', '1991-03-05', '0000-00-00', '0000-00-00', '2', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(52, '-', 0, '', 'ID20305442189001', '', '', 'GTT', 'Eko Rizqa Sari, S.Pd, Gr', 'Kebumen', '1989-04-02', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'Mapel'),
(53, '-', 0, '', 'ID20305442195001', '', '', 'GTT', 'Mukhammad Maslakh Al Ayyubi, S.Pd', 'Kebumen', '1995-05-19', '0000-00-00', '0000-00-00', '1', '', '-', '', '', '', '', '', '', 'Aktif', '', 'BP/BK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_isialumni`
--

CREATE TABLE `tb_isialumni` (
  `id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `th_lulus` varchar(4) NOT NULL,
  `sma` varchar(100) NOT NULL,
  `pt` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `alamatins` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kesan` text NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `tglpost` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_isialumni`
--

INSERT INTO `tb_isialumni` (`id`, `nama`, `th_lulus`, `sma`, `pt`, `instansi`, `alamatins`, `hp`, `email`, `alamat`, `kesan`, `gambar`, `tglpost`, `status`) VALUES
(1, 'Islahul Amah', '2019', '', 'IAINU Kebumen', '', '', '08990643375', 'islahulamah2187@gmail.com', 'Sidomukti, ambal , kebumen', '', '', '2021-01-14 11:20:20', 1),
(2, 'Richa Sifa Mustafa', '2019', '', 'IAIN Purwokerto', 'IAIN Purwokerto', 'Purwanegara, Purwokerto, Banyumas', '083823763722', 'richasyifa4@gmail.com', 'Sirnoboyo, Bonorowo, Kebumen', 'Bersyukur, Mantapp, Sukses terus buat MAN 3 Kebumen', '', '2021-01-14 11:26:16', 1),
(3, 'Fadhilatul Ikromah', '2018', '', 'IAIN Purwokerto', 'IAIN', 'Purwokerto utara', '089529100853', 'fadhilatul.ikromah@gmail.com', 'Kutowinangun', '-', '65bdaf7d027ca7690286ddb79b99486e.jpg', '2021-01-14 11:30:01', 1),
(4, 'Lulu laelaeni ulfa', '2019', '', '', '', '', ' 083851948645', '', 'Sidoluhur,ambal kebumen', 'Banyak ilmu yg ku dapat dari MAN 3 Kebumen baik ilmu pendidikan maupun keagamaan', '675b38d222c4bd40ebeca08137ea7a3f.jpg', '2021-01-14 11:31:26', 1),
(5, 'FANIA ELSA NABILA', '2020', '', '', 'STIKES MUHAMMADIYAH GOMBONG', 'Jln. Yos Sudarso No. 461 Gombong, Kebumen.', '085782846199', 'faniaelsanabila01@gmail.com', 'Jatisari rt 5 rw 5,Kec. Kebumen, Kab. Kebumen ,Indonesia', 'cukup menyenangkan berpengalaman sekolah di madrasah ,lebih mempunyai pengalaman yang belum pernah saya alami sebelumnya.', '', '2021-01-14 11:32:06', 1),
(6, 'Vicky Ayyubi Diwantara', '2018', '', 'Universitas Negeri Semarang', '-', '-', '081227873075', 'vickyayyubi304@gmail.com', 'Rt02/03, Mrinen, Kutowinangun, Kebumen, Jawa Tengah', 'Selama di MAN menjadi lebih mengerti tentang agama islam dan juga pengetahuan umumnya', 'ffbfee734f869c20a0bdb0db2ca068b1.jpg', '2021-01-14 11:38:08', 1),
(7, 'Siti Muslihatun', '2020', '', 'IAIN PURWOKERTO', '', '', '083123614930', 'lihaaaaaah002@gmail.com', 'Ungaran, Kutowinangun, Kebumen', 'Semangatt?', '', '2021-01-14 11:42:22', 1),
(8, 'Dessy Safitri', '2020', '', '', '', '', '085856750522', 'dessysafitri1212@gmail.com', 'Kabuaran, prembun, kebumen', '', '', '2021-01-14 11:45:42', 1),
(9, 'Trias kinthoro', '2012', '', '-', '', '', '08155555296', 'triaskin23@gmail.com', 'Gedongan rt003 rw004 Sinduadi Mlati Sleman Yogyakarta ', 'Selama di sekolah di MAN dapat ilmu yg sangat bagus dan sangat kangen sekali berkunjung ke MAN kembali', '', '2021-01-14 11:50:18', 1),
(10, 'Trias Kinthoro ', '2012', '', '', '', '', '08155555296', 'triaskin23@gmail.com', 'Gedongan Rt003 Rw004 Sinduadi Mlati Sleman Yogyakarta ', 'Sangat terkesan dengan perkembangan MAN Kebumen yg dulu MAN Kutowinangun. Jos gandos buat bpk/ibu Guru nya sukses', '', '2021-01-14 11:51:48', 1),
(11, 'EKA SETYOWATI', '2018', '', '', '', '', '083839212714', 'ekaasetyowatii@gmail.com', 'Desa Tunjungseto,Kutowinangun,Kebumen', 'Senang bisa belajar di MAN 3 Kebumen', '', '2021-01-14 11:58:43', 1),
(12, 'Manisih', '2012', '', 'Universitas aisyiyah Yogyakarta ', '', '', '087838285515', 'shidqianist@gmail.com', 'Yogyakarta ', '', '729d6b8e0c278e94c80b57e6376b39b7.jpg', '2021-01-14 12:00:49', 1),
(13, 'Maryani', '2003', '', 'Akbid Ylpp Purwokerto', 'Puskesmas watumalang', 'jln.kyai jebeng lintang wonosobo', '085227433330', 'yanielvina7@gmail.com', 'Watumalang wonosobo', 'Banyak ilmu pengetahuan dan pengalaman yg di dapat saat putih abu2', '', '2021-01-14 12:11:16', 1),
(14, 'Dyah rini purwati', '2003', '', '', 'Dyah rini purwati', 'Jogopaten janggli rt 02 rw 05', '087809280225', '', 'Jogopaten janggli RT 02 RW 05 KEC BULUSPESANTREN', 'Menyambung silaturohmi', '8775b5640af23f833991f182d624a3b7.jpg', '2021-01-14 12:12:33', 1),
(15, 'Dyah rini purwati', '2003', '', '', 'Dyah rini purwati', 'Jogopaten janggli rt 02 rw 05', '087809280225', '', 'Jogopaten janggli RT 02 RW 05 KEC BULUSPESANTREN', 'Menyambung silaturohmi', '06701f3792e2ee0b94cbf622716b8a57.jpg', '2021-01-14 12:13:58', 1),
(16, 'Azizah ludiana', '2003', '', '', '', '', ' 082227445454', 'Azizahludiana9@gmail.com', 'Tulusrejo 03/02 desa lubanglor kec.butuh purworejo', 'Tdk akan hilang dr ingatkuu akan suka dukanya di man, mksh utk bpk ibu guru yg sdh mendidik kami, smg alloh mengganti lelah mrk dg lillah', '7c0d6cf5606ee5aa70489e594b8e0a70.png', '2021-01-14 12:17:38', 1),
(17, 'Agus Sholeh Darmawan ', '2020', '', 'Universitas Tidar Magelang ', '', '', '088221722366 ', 'agussholehdarmawan@gmail.com', 'Ds Robahan, RT 01 Rw 05 Desa Mekarsari kutowinangun Kebumen ', '', '', '2021-01-14 12:25:29', 1),
(18, 'Iva fadilla cahyani', '2019', '', '', '', '', '081535249332', '', 'Prasutan kecamatan ambal kabupaten kebumen', 'Enakan sekolah dari pada gak sekolah', '', '2021-01-14 12:25:29', 1),
(19, 'Alvin Ramadhani', '2020', '', 'IAINU KEBUMEN', 'IAINU KEBUMEN', 'Jl. Tentara Pelajar No.55B, Panggel, Panjer, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54312', '081327463041', 'alvinrmdn28@gmail.com', 'Babadsari, Kutowinangun kebumen', 'Saya bangga pernah belajar di MAN 3 ????????????Kebumen, selagi menyenangkan juga sangat menambah wawasan ,pengalaman dan pengetahuan saya, Terima kasih buat Bapak Ibu guru yang telah sabar mendidik saya ????????????????????????????????semoga MAN 3 Kebumen tambah jaya, tambah banyak siswa nya untuk mendidik generasi penerus yang ?????????????????????????\r\n \r\n', '', '2021-01-14 12:25:35', 1),
(20, 'Agus Sholeh Darmawan ', '2020', '', 'Universitas Tidar Magelang ', '', '', '088221722366 ', 'agussholehdarmawan@gmail.com', 'Ds Robahan, RT 01 Rw 05 Desa Mekarsari kutowinangun Kebumen ', '', '', '2021-01-14 12:25:35', 1),
(21, 'Nurul hikmah', '2020', '', '-', '', '-', '083128064807', 'nh634154@gmail.com', 'Jogopaten jangli', '-', 'bd7ca613bc017851a46540a63f1ec8cb.jpg', '2021-01-14 12:26:12', 1),
(22, 'Ukhtu Nadiah ', '2020', '', 'Institut Agama Islam Nahdlatul Ulama ', '', '', '083840505629', 'ukhtunadia@gmail.com', 'Babadsari Kutowinangun Kebumen ', 'MAN 3 Kebumen hebat', '', '2021-01-14 12:30:19', 1),
(23, 'Septianto', '2017', '', 'UIN Walisongo Semarang', '', '', '08813716687', 'Septianto924@gmail.com', 'desa tunggalroso kecamatan prembun rt/rw 03/03 Kebumen', 'Belajar di Man 3 Kebumen sangat berkesan dan menyenangkan', '', '2021-01-14 12:43:57', 1),
(24, 'Anang Makrup', '2017', '', 'Institut Agama Islam Nahdlatul Ulama (IAINU) Kebumen', 'IAINU KEBUMEN', 'Jl. Tentara Pelajar No. 55 B ', '083844603556', 'anangmakrup1234@gmail.com', 'Desa Pekunden RT 03/01 Kec. Kutowinangun Kab. Kebumen', 'Jadilah ikan kecil yang hidup didalam samudra, jangan menjadi ikan besar yang hidup dalam aquarium.\r\n\r\nMAN 3 Kebumen JAYA !!!', '', '2021-01-14 12:44:21', 1),
(25, 'Siti Aminatus Sholikhah ', '2016', '', 'Stikes Muhammadiyah Gombong ', '', 'Jl. Yos sudarso', '083866983794 ', 'sitiaminatussholikhah533@gmail.com', 'Lumbu rt 1 rw 2,Kutowinangun ', 'Bangga menjadi alumni man 3 kebumen', '2f6b3d7f34b45a296b649887e7e685ce.jpg', '2021-01-14 12:47:14', 1),
(26, 'SRI LESTARI', '2003', '', 'AKBID YLPP PURWOKERTO', 'PUSKESMAS WATUMALANG', 'Jl. Kyai Jebeng Lintang, Wonoroto.. Watumalang-Wonosob', '081327529506', 'sriles85528@gmail.com', 'PUSKESMAS WATUMALANG', 'senang, bahagia bisa menjadi bagian dari MAN 3 KEBUMEN', '', '2021-01-14 12:49:37', 1),
(27, 'Andeni Irawan', '2004', '', 'Universitas Diponegoro', 'PT.Infineon Technologies Batam', 'Batamindo Industrial Park Lot. 317 Batam', '081227404225', 'a4n_dani@yahoo.co.id', 'Perum Griya Batuaji Asri Thp6 Blok XA2#26', 'MAN is the best', '1b535b8e862a52f3bfd563fc21bbbfb1.JPG', '2021-01-14 13:09:57', 1),
(28, 'VERA SETYA PRATAMA', '2012', '', 'UNNES', 'SMA N 1 MIRIT', 'Jln.Tlogodepok', '081332843650', 'verasetiapratama@gmail.com', 'Sudagaran, kutowinangun', 'hidup itu bak seni lukisan yang abstrak bagi orang lain yang paham akan menyenangkan bagi yang tidak akan sulit memahaminya.', '8e57506a29001d3b51b2c4fccef613e8.jpg', '2021-01-14 13:28:23', 1),
(29, 'Sigit Prabowo', '2018', '', 'No name', 'No name', '', '085643021098', 'sigitwizard98@gmail.com', 'Magelang', 'Man 3 kebumen luar biasa', '', '2021-01-14 13:51:19', 1),
(30, 'Muhammad ihsan usmani', '2017', '', '', '', '', '083836141932', '', 'Purworejo ', 'Jangan lupakan jasa guru kita', 'e102f6c3da95301cf9cfef5a3c1df41e.jpg', '2021-01-14 13:55:28', 1),
(31, 'Dwi nurkhasanah', '2003', '', 'Stikes Surya Global Yogyakarta', 'Puskesmas Cijerah', 'Mekar hegar 1 no 1 Cijerah, kota Bandung', '087737831584', 'dwiurkhasanah60@gmail.com', 'Cibogo permai 2 rt 02 rw 14 leuwigajah, cimahi', 'Bangga pernah menuntut ilmu di MAN Kutowinangun', '', '2021-01-14 14:12:08', 1),
(32, 'Siti Muntofingah', '2012', '', 'Universitas Diponegoro ', 'Pemerintah Desa Lundong', 'Jl. Pencil No.01 Kutowinangun ', '087732616002', 'simit.boo@gmail.com', 'Lundong ', 'Santun & Islami', '513c1fef20c82aca94b5a7f0e471b729.jpg', '2021-01-14 14:54:01', 1),
(33, 'Titis Retno Puspaningrum Sutrisno', '2020', '', 'STIE putra bangsa', '', '', '085725160441', 'titisretnopus@gmail.com', 'JL WIROGATEN RT 4 RW3 DUKUH PESUTREN WIROGATEN MIRIT KABUPATEN KEBUMEN', '', '', '2021-01-14 15:24:48', 1),
(34, 'Miftakhul Mubarok', '2017', '', '', '', '', '08995127086', 'miftakhul0898@gmail.com', 'Pekutan, mirit, kebumen', 'That''s very" Awesome. ', '920177adb468179b1f62e0d11735195c.jpg', '2021-01-14 15:43:10', 1),
(35, 'Uhti Kurniastuti', '2014', '', 'Universitas Indraprasta PGRI', 'SMPIT AL ISHMAH', 'Jl Sawo Raya No 16 Kranggan, Jatisampurna, Bekasi', '081802928151', 'uhtykurnia19@gmail.com', 'Jl. Pegasing II No 159A Cilangkap, Jakarta Timur', 'Terimakasih bapak ibu guru MAN 3 Kebumen', 'c5706cfc72be2de1abad46827e553e7e.jpg', '2021-01-14 16:02:26', 1),
(36, 'Achmad Alfiyan Mubarok', '2018', '', 'Unsiq ', '', '', '083840365719', 'alfiyanmubarok21@gmail.com', 'Peneket ambal kebumen', '', '', '2021-01-14 16:03:20', 1),
(37, 'NI''MATUL KHOIRIYAH', '2020', '', 'UIN Sunan Kalijaga Yogyakarta', 'UIN Sunan Kalijaga Yogyakarta', 'Yogyakarta', '085701804859', 'khoiriyahelkhan@gmail.com', 'Lundong, Kutowinangun, Kebumen', 'Luar Biasa. Terimakasih Man 3. Madrasah tercinta. ', '73e53311098277962ac9c6201533409d.jpg', '2021-01-14 16:29:33', 1),
(38, 'Indah Lestari', '2019', '', '', 'Jabil', 'Penang', '01169414659', 'indah.lestari17052001@gmail.com', 'Purworejo', 'alhamdulillah', '', '2021-01-14 16:50:13', 1),
(39, 'Mustaghfiroh ', '2017', '', '', 'PT. Yamaha Indonesia Motor Mfg', 'Jl. Dr. Krt Radjiman Widyodiningrat-Jakarta 13920 ', '081808944937', 'Mustaghfiroh422@gmail.com', 'Jakarta Timur', 'Terima kasih Madrasahku ?', '', '2021-01-14 17:32:45', 1),
(40, 'Heni Ismawati', '2006', '', 'STIKES MUHAMMADIYAH GOMBONG', 'RS PKU MUHAMMADIYAH KUTOWINANGUN', 'JL. PEMUDA NO 12', '087732553132', 'heniismawati087@gmail.com', 'Ds Ampih 02/04 Buluspesantren, Kebumen', 'Mantap', 'adab71b332aa72a36bb90e1d7ec2005a.jpg', '2021-01-14 18:48:17', 1),
(41, 'Alim Mahmudin', '2020', '', 'UIN SALATIGA', '', '', '081215451059', 'mahmoedin24@gmail.com', 'Triwarno Krajan RT 1/3 Kutowinangun Kebumen.', '', 'c340ce3ed05b90d33bc116701eb5686e.jpg', '2021-01-14 18:57:34', 1),
(42, 'An Farchani', '1993', '', '1. IAIN Sunan Kalijaga Yogyakarta 2. Univ. Sarjanawiyata Tamansiswa Yk', 'MAN 3 Kebumen', 'Jl. Pencil No.47 Kutowinangun Kbm', '089671308049', 'farchani74@gmail.com', 'Tersobo 04/02 Prembun Kbm', 'Alhamdulillah bangga dan bersyukur mjd alumni MAN Kutowinangun (MAN 3 Kbm)', '', '2021-01-14 20:46:40', 2),
(43, 'An Farchani', '1993', '', '1. IAIN Sunan Kalijaga Yogyakarta 2. Univ. Sarjanawiyata Tamansiswa Yk', 'MAN 3 Kebumen', 'Jl. Pencil No.47 Kutowinangun Kbm', '089671308049', 'farchani74@gmail.com', 'Tersobo 04/02 Prembun Kbm', 'Alhamdulillah bangga dan bersyukur mjd alumni MAN Kutowinangun (MAN 3 Kbm)', '', '2021-01-14 20:47:46', 1),
(44, 'Lilmutoharoh', '2008', '', 'STAINU', 'MAN 3Kebumen', 'Jl.pencil no.47', '085201708921', 'lilmutoharoh5@gmail.com', 'Panjer', 'Saya bersyukur sekolah di MAN 3 Kebumen , madrasah keren, guru2 kompetitif, dan pljrannya lengkap', 'c735dca845e820d808813901b4cf2eea.jpg', '2021-01-14 20:59:53', 1),
(45, 'Kurnia Handayani', '1993', '', 'UAD Yogyakarta', 'MTsN 7 Kebumen', 'Komplek Kauman Prembun', '0897 9152 261', 'kurniaani1974@gmail.com', 'Tersobo Prembun Kebumen', 'Luar Biasa', '50e37ed8188ce62695d95d4f03330091.jpg', '2021-01-14 21:08:47', 1),
(46, 'Nita Suciati', '2008', '', 'DIII KEPERAWATAN FKK-UMJ', 'Rs.Permata Cibubur', 'Jl.Alternatif Cibubur-Cileungsi No.6A', '081284126254', 'nimam30.ns@gmail.com', 'Teluk Gong, Gg.lili RT.012/RW.007 No.10, Pejagalan, Penjaringan, Jakarta Utara', 'Jaman nya bnyak cerita\r\nDan selalu rindu lotek samping ruang kumpul2 OSIS dlu...????', '26bfe3afaf9a7d7521931937cb254915.jpg', '2021-01-14 21:16:08', 1),
(47, 'Nofika Setia Ramadani', '2020', '', 'Iain Salatiga', 'Iain Salatiga', 'Mangunsari, Kec. Sidomukti, Kota Salatiga, Jawa Tengah 50721', '087896669071', 'nofikasetiarmdni@gmail.com', 'Pejagatan Kutowinangun Kebumen', 'Team work makes the dream work', '', '2021-01-14 21:23:05', 1),
(48, 'Angkat supono', '2017', '', 'IAIN Surakarta', 'IAIN Surakarta', 'Jl. Pandawa Pucangan, Kartosuro, Sukoharjo', '083126790479', 'suponosantrinekyai147@gmail.com', 'Kartosuro, Sukoharjo', 'Man Bikin nyaman ', '', '2021-01-14 21:25:20', 1),
(49, 'Siti Maghfiroh', '2020', '', '-', '-', '-', '083824209972', 'sitimaghfiroh0901@gmail.com', 'Karang Cingkrang, RT 001/002, Tanjungsari, Kutowinangun', 'Mantap????', '0c838379a8b225fc67b9aaf43d0d5670.jpg', '2021-01-14 21:34:35', 1),
(50, 'Pawit', '1994', '', 'Univ cokroaminoto', 'Pt.  Astra International tbk', 'Raya Jemursari no. 215 Surabaya', '081331890290', 'pawitpawit77@gamil.com', 'Permata Alam Permai Gedangan Sidoarjo ', '', '', '2021-01-14 21:39:14', 1),
(51, 'Tuti Khusniati', '1999', '', 'UNIVERSITAS MUHAMMADIYAH PURWOREJO', 'MAN 3 KEBUMEN', 'Jl Pencil No 47 Kutowinangun', '089526822572', 'tutikhusniati13@gmail.com', 'Jalan Garuda No 13 Kebumen', 'Belajar di MAN 3/Kutowinangun mendapat banyak pengetahuan dunia dan akhirat.', '4642de12e36bb64c341721dcd0616625.jpg', '2021-01-14 21:41:11', 1),
(52, 'Isnaeni safitri', '2019', '', 'IAINU KEBUMEN', 'KEBUMEN', 'Jl. Tentara Pelajar No.55B, Panggel, Panjer, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54312 ', '083863768712', 'isnaenys12@gmail.com', '', '', '', '2021-01-14 21:49:00', 1),
(53, 'Isnaeni safitri', '2019', '', 'IAINU KEBUMEN', 'KEBUMEN', 'Jl. Tentara Pelajar No.55B, Panggel, Panjer, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54312 ', '083863768712', 'isnaenys12@gmail.com', 'Dk. Kwaron,Desa Blater,Kec. Poncowarno, Kab. Kebumen ', '', '', '2021-01-14 21:53:14', 1),
(54, 'Iing Wahyuningsih', '2020', '', 'Universitas Ahmad Dahlan', '', 'Jl rinroad selatan, banguntapan, bantul DIY ', '0895391463270', 'iingwahyuningsih816@gmail.com', 'Tersobo 1 kec.prembun, kebumen', '', '', '2021-01-14 22:06:02', 1),
(55, 'Yulianti', '2020', '', '-', '', '', '083862294634', 'anti91661@gmail.com', 'Jembngan ,kec .poncowarno ,kab.kebumen', 'Senang sekolah di man 3 kebumen ,,terimakasih ibu ,BPK sudah mengajari kami', 'e95e1bbf2279825b680ba91c7dcdce88.jpg', '2021-01-14 22:10:52', 1),
(56, 'Efa Setianingsih', '2020', '', '', '', '', '', '', 'Triwarno ', '', '', '2021-01-14 22:15:13', 1),
(58, 'Benny adi gunawan ', '2019', '', '', '', 'Jambi', '085770215210', 'bennyadigunawan4@gmail.com', 'Muaro jambi,Jambi,Indonesia', 'Biasa aja', '', '2021-01-14 22:34:57', 1),
(59, 'Salisatun agustinah', '2020', '', '', '', '', '08953852e0628', 'salisatunagustinah26@gmail.com', 'Lundong rt 002 rw 001 kec.kutowinangun kab.kebumen', 'Senang belajar dengan guru sekolah sehingga mendapatkan ilmu yang bermanfaat bagi nusa dan bangsa', '5c081432645976ccb2f8fede30897f3a.jpg', '2021-01-14 22:35:09', 1),
(60, 'Nur Biyantoro', '2013', '', '', 'PT.Takagi Sari Multi Utama', 'Delta Silicon Industrial Park Jl.Kruing 3 Blok L8 No.2-3 Desa Sukaresmi-Cikarang Selatan-Bekasi 1755', '082311167223', 'nurbiyan7@gmail.com', 'Cikarang-Bekasi-Jawa Barat', '', '', '2021-01-14 22:50:08', 1),
(61, 'Ahmad Khanifudin', '2013', '', 'Universitas Teknologi Yogyakarta', 'Waroeng Seni', 'Jl. Kalimo Sodo No. 31 Tamanan, Banguntapan, Bantul, Yogyakarta', '081326699182', 'khanif.waroengseni@gmail.com', 'Krapyak Wetan RT 05, Panggungharjo, Sewon, Bantul, Yogyakarta', 'The Better Is Choice', '9de4764ac064c0a7af7a2bc15f2504f9.jpg', '2021-01-14 23:03:26', 1),
(62, 'siti musarovah', '2013', '', '', '', '', '081283973571', 'sitimusarovah.sm@gmail.com', 'cikarang selatan', 'majulah manzaku', '', '2021-01-14 23:16:38', 1),
(63, 'Samsul Maarif', '2006', '', 'IAINU KEBUMEN', 'Man 3 Kebumen', 'Jalan Pencil 47 Kutowinangun kebumen', '087737888257', 'maarifsamsul287@gmail.com', 'Blater Poncowarno Kebumen', 'Madrasah Hebat Bermartabat', '', '2021-01-14 23:44:04', 1),
(64, 'Riza Azizi', '2019', '', '', '', '', '087732876920', 'azuziriza153@gmail.com', 'Kp.rawa bambu bekasi utara', '', '', '2021-01-14 23:48:23', 1),
(65, 'Siti Nur Hasanah', '2017', '', 'Poltekkes Kemenkes Yogyakarta', 'RSUP Dr Sardjito', 'Jalan kesehatan', '088229830035', 'hasanahnursie5@gmail.com', 'Kajor Nogotirto gamping Sleman', 'Terimakasih MAN 3 yang telah membantuku meraih cita cita ku', 'b66ed5c2631fae642e8b43bd4df22443.jpg', '2021-01-14 23:49:44', 1),
(66, 'Ahmad Sudaryaji', '2008', '', 'MAN 3 KEBUMEN', 'MAN 3 KEBUMEN', 'Jl.Pencil No.47 Kutowinangun Kebumen Jawa Tengah 54393', '083807969062', 'dhenaryacool@yahoo.com', 'Sidoluhur Rt 02 Rw 03 Ambal Kebumen', '', '', '2021-01-15 02:48:03', 1),
(67, 'Eka Dani Hadi prayogo', '2008', '', 'MAN 3 kebumen', 'Nu', 'Kutowinangun', '082237263060', 'damiacykpupi@gmail.com', 'Malaka tengah,malaka,Kupang,NTT', 'Doa terbaik utk sekolah n guru2 ku yg tercinta...', '', '2021-01-15 05:04:10', 1),
(68, 'Teguh Ali Hidayat', '2007', '', 'UTP SURAKARTA', 'MAN 3 KEBUMEN', 'Jl Pencil No. 47 Kutowinangun', '085235353130', 'teguhade743@gmail.com', 'Tersobo, Prembun, Kebumen', '', '7f89321625a427a351986e1d878736cc.jpg', '2021-01-15 06:33:04', 1),
(69, 'SITI NURLIA OKTAVIANA ', '2019', '', 'Universitas jenderal ahmad yani yogyakarta', '', '', '081216736378', 'Volvarielanurliaoktaviana05@gmail.com', 'Jln. Pedegolan RT 02 RW 04 JLEGIWINANGUN KUTOWINANGUN', 'Saya senang karena selama sekolah disini saya bisa hafalan hadits meskipun masih sulit tetap berusaha buat hafalan hadits. Para guru juga sabar mengajar walaupun murid melakukan kesalahan. Terima kasih pak guru bu guru atas bimbingan selama 3 tahunnya ???? sukses selalu MAN 3 KEBUMEN ', '', '2021-01-15 07:02:53', 1),
(70, 'Achmad Sunarso', '1992', '', 'STAINU', 'MAN 1 Kebumen', 'Jalan cincin kota no 44 gemeksekti kebumen', '081226488506', 'narso_mankwn@yahoo.com', 'Rt 02 Rw.02 Kebejen Kuwarisan Kutowinangun', 'Aku bersyukur sekolah di MAN Kutowinangun yang sekarang jadi MAN 3 Kebumen aku pernah kerja di MAN 3 Kebumen tahun 2007 sd 2019', '', '2021-01-15 07:09:35', 1),
(71, 'RAHAYU SETIANINGSI ', '2020', '', '-', '', '', '085782660057', 'rahayusetiangsi187@gmail.com', 'Jakarta utara,tanjung priuk, warakas, gang 5 ', 'MAN 3 KEBUMEN sangat mudah membuat aku rindu :)', 'ce119df6f675cd73b54cea375814a078.jpg', '2021-01-15 07:22:39', 1),
(72, 'MUTNGATUN', '2003', '', '', '', '', '085712956091', '', 'Kertanegara ,Purbalingga,Jawa Tengah', '', '', '2021-01-15 10:41:10', 1),
(73, 'Taufik Danar Ardianto', '2013', '', 'Universitas Muhammadiyah Surakarta', 'Kebun Tandur Orchid', 'Desa Sarwogadung, RT 001/001, Kec. Mirit, Kab. Kebumen', '087837542072', 'taufik.danar9@gmail.com', 'Desa Sarwogadung, RT 001/001, Kec. Mirit, Kab. Kebumen', 'Salam kenal semua', '', '2021-01-15 10:48:10', 1),
(74, 'MUTNGATUN', '2003', '', '', '', '', '085712956091', 'atunbbs80@gmail.Com', 'Kertanegara ,Purbalingga,Jawa Tengah', 'Bangga menjadi alumni MAN 3 Kebumen', 'd27c85cfc5a09d2a6c39754df6cc0e5d.jpg', '2021-01-15 10:58:50', 1),
(75, 'RISMA LENY MAULIN', '2020', '', '-', '-', '-', '083139326318', 'rismamaulin@gmail.com', 'Kalisalam Rt 03 Rw 01 Kalibagor Kebumen', '-', '', '2021-01-15 12:39:26', 1),
(76, 'Hastin Fairuz Yuniana', '2009', '', 'PoltekKes KemenKes Semarang', 'RSUD Prembun ', 'Jl. Slamet Riyadi No. 53 Prembun Kebumen', '082287000785', 'hastin.fay@gmail.com', 'Pekunden 02/02 Kutowinangun Kebumen', 'Manis, asam, asin... ????\r\nTapi gak pahit yah ????', '', '2021-01-15 14:59:52', 1),
(77, 'Ahmad Khanifudin, S.Ak', '2013', '', 'Universitas Teknologi Yogyakarta', 'Waroeng Seni', 'Jl. Kalimo Sodo No. 31 Tamanan, Banguntapan, Bantul, Yogyakarta', '081326699182', 'khanif.waroengseni@gmail.com', 'Krapyak Wetan RT 05, Panggungharjo, Sewon, Bantul, Yogyakarta', 'The Better Is Choice', '9fd48981b719d4b8e4a8c814d54fffe6.jpg', '2021-01-15 15:54:17', 1),
(78, 'Ahmad Khanifudin, S.Ak', '2013', '', 'Universitas Teknologi Yogyakarta', 'Waroeng Seni', 'Jl. Kalimo Sodo No. 31 Tamanan, Banguntapan, Bantul, Yogyakarta', '081326699182', 'khanif.waroengseni@gmail.com', 'Krapyak Wetan RT 05, Panggungharjo, Sewon, Bantul, Yogyakarta', 'The Better Is Choice', '69044d1753b2dd10659060951241064e.jpg', '2021-01-15 15:55:01', 1),
(79, 'Ahmad saebani', '2016', '', '', 'KIOS JUAL BELI ACCECORIES HP KONTER BANY CELL TIRTOMOYO', 'Jl.Tirtomoyo', '083861222634', 'anisae017@gmail.com', 'Desa Tirtomoyo,Kec.Poncowarno,Kab.Kebumen', '', '', '2021-01-15 17:19:11', 1),
(80, 'Maulindah', '2019', '', '', '', '', '085875456801', 'maulindah2405@gmail.com', 'Jembangan', '', '', '2021-01-15 17:58:02', 1),
(81, 'SYULTON NA''IM MAJID', '2020', '', 'UNIVERSITAS MA''ARIF NADHATUL ULAMA', '', '', '081325222420', 'syulton20@gmail.com', 'keputihan, kewayuan, pejagoan, rw 02. rt 05', 'jangan perna menyesal ketika membangun sesuatu dalam hidup, sekarang belm jadi tapi besok pasti akan jadi', '', '2021-01-15 18:05:06', 1),
(82, 'Aqib saifi hakim', '2020', '', 'IAIN kediri', 'Prodi perbankan syariah ', 'Jl.sunan ampel No.07 ngronggo kediri jawa timur', '081228273109', 'saifihak03@gmail.com', 'lumbu, kutowinangun, kebumen', 'Semoga di beri jalan yang baik , suatu perjuangan apapun yang positif pasti ada cobaannya , ', 'debc60fdaf84f9f46ce4ddb4e444a1fb.jpg', '2021-01-16 08:57:59', 1),
(83, 'Dhimas Bayu Prasetyo', '2019', '', '-', '-', '-', '081930538647', 'dhimasbay212@gmail.com', 'Kp. Waringin Jaya RT 004 RW 007,Bojonggede,Bogor,Jawa Barat', 'Sekian dan terimakasih ', 'ad92f97c775ee522b0859b3e191a36cb.jpg', '2021-01-16 11:04:29', 1),
(84, 'Siti Laela Minnatul Ngizzah', '2009', '', 'AMIK PGRI Kebumen', 'MAN 3 Kebumen', 'Jl. Pencil No. 47 Kutowinangun', '085713283501', 'laylaminnazza@gmail.com', 'Rt 004 Rw 004 Kel. Tamanwinangun Kec. Kebumen', 'MAN 3 Kebumen adl madrasah terbaik setelah keluarga. Semoga semakin maju & jaya.\r\n#Madrasah Hebat Bermartabat', '93cd4c64b21188d8c0584be8eb8817ba.jpg', '2021-01-16 11:17:13', 1),
(85, 'ASTUTI', '1996', '', 'STAIN PURWOKERTO', 'MAN 3 KEBUMEN', 'JL PENCIL NO 47 KUTOWINANGUN', '085725329226', 'atuti3299@gmail.com', 'LUNDONG MASNGANTEN', 'SENANG BISA MENJADI ALUMNI MAN 3 KEBUMEN KARENA DISINILAH DIPELAJARI ILMU AGAMA DAN DAN JUGA ILMU UMUM ', '8f613016e69db7969341ba31d534a523.PNG', '2021-01-16 18:11:30', 1),
(86, 'Nailul ''Inayah', '2020', '', 'UIN Walisongo Semarang', 'UIN Walisongo Semarang', 'Jl. Walisongo No.3-5 Semarang', '083148736108', 'inayahmantani@gmail.com', 'Mekarsari,Kutowinangun,Kebumen', 'Luar biasa', 'bfdfdb6320c065e7e589087ff2fe8d9c.jpg', '2021-01-17 08:39:05', 1),
(87, 'Tri Lisna Wati', '2020', '', '-', '-', '-', '087812821005', 'trilisna214@gmail.com', 'Ds.Poncowarno kec.Poncowarno kab.Kebumen', '', '', '2021-01-19 17:04:07', 1),
(88, 'Nunung Lutfiyah', '2019', '', 'IAIN Purwoketo', 'IAIN Purwokerto', 'Purwokerto Utara', '0895383046838', 'nununglutfi16@gmail.com', 'Tanjungsari Rt 03 Rw 03 Kutowinangun, Kebumen', 'Waktu bolehlah berlalu namun kenangan masih menyimpan memori dalam sejarah pribadi... Terimakasih Guruku yang telah mengajarkanku banyak ilmu.????', '', '2021-01-20 16:31:51', 1),
(89, 'Ade Intantri', '2020', '', '', '', '', '085700368424', 'adeintan311@gmail.com', 'Babadsari, Kutowinangun', 'Madrasahku Luar biasa', '', '2021-01-25 15:10:50', 1),
(90, 'Nasirotul Ummah', '2020', '', '-', '-', '-', '085741018024', 'nasirotul2106@gmail.com', 'Rt 03 Rw 01 Ds.Poncowarno Kec.Poncowarno Kab.Kebumen', 'Bangga jadi alumni madrasah . Madrasah hebat bermartabat', '', '2021-01-31 19:38:52', 1),
(91, 'Endang Syafitri', '2018', '', '', 'Endang Safitri', 'Polomarto rt 01/rw 01,butuh, purworejo, Jawa Tengah', '088216183735', 'endolsh10@gmil.com', 'Jln H najih RT.002, RW 001, No.99 Konveksi Batik Masruri, Joglo, kembangan, Jakarta barat , KOTA JAK', 'Jika kita diremehkan orang  jangan sekali-kali kalian membalasnya, jadikan remehan itu sebagai motivasi????', '734a09e2c28865a9ddea8f8cc17fe10f.jpg', '2021-03-16 17:33:20', 1),
(92, 'Endang Syafitri', '2018', '', '', '', '', '088216183735', 'endolsh10@gmil.com', 'Polomarto rt 01 rw 01,butuh, purworejo, Jawa Tengah', 'Jika kita diremehkan orang  jangan sekali-kali kalian membalasnya, jadikan remehan itu sebagai motivasi????', 'a84707e0b437efc5fb89dc40ff9a9418.jpg', '2021-03-16 17:36:43', 0),
(93, 'Siti Muslihatun', '2020', '', 'IAIN Purwokerto', '-', '-', '083123614930', 'lihaaaaaah002@gmail.com', 'Ungaran, Kembaran RT 01/02 Kutowinangun, Kebumen', 'Thank you', '', '2021-05-15 16:49:41', 1),
(94, 'Isnaeni safitri', '2019', '', 'IAINU KEBUMEN', 'KEBUMEN', 'Jl. Tentara Pelajar No.55B, Panggel, Panjer, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54312 ', '083863768712', 'isnaenys12@gmail.com', 'Dk. Kwaron,Desa Blater,Kec. Poncowarno, Kab. Kebumen ', 'Banyak-banyak bersyukur dan berterimakasih????', '', '2021-06-14 15:18:44', 1),
(95, 'Erifah', '2018', '', '', '', '', '083863156722', '', '', '', '', '2021-09-18 12:47:23', 1),
(96, 'Faizal Khoiri', '2021', '', '', '', '', '', '', '', '', '', '2021-12-22 17:30:50', 1),
(97, 'ACHMAD SYAIFUR ROCHMAN', '2015', '', 'Universitas Muhammadiyah Magelang', 'Swasta', 'Magelang', '082111788861', 'ipunksyaefurrochman@gmail.com', 'Kebumen', 'Selalu rindu masa-masa sekolah, yang tidak terulang kembali. Karena pada jaman dulu belum ada pandemi corona', 'b4a0f9508b851b3a4db371753160a0ee.jpg', '2022-01-13 13:58:20', 1),
(98, 'Indra Irmawan', '2017', '', '-', '-', 'Jakarta', '081297132997', 'indrairm2@gmail.com', 'mulyosri prembun kebumen', 'kangen mbolos wkwkkw', '36309874f0bbcd62ab96660e39e26530.jpg', '2022-04-18 18:32:16', 0),
(99, 'Nurkholis Santoso ', '1990', '', '', '', '', '', '', '', '', '', '2022-04-20 02:40:01', 0),
(100, 'Abiyu abitama f', '2022', '', 'MAN 3 KEBUMEN', '', '', '085600417074', '', 'Padureso', '', '', '2022-05-07 09:00:41', 0),
(101, 'Muhammad Rizal Alfian', '2022', '', '', '', '', '085868878111', '', 'Sidogede', 'Bagus', '', '2022-05-07 09:02:50', 0),
(102, 'Muhammad Rizal Alfian', '2022', '', '', '', '', '085868878111', '', 'Sidogede', 'Bagus', '', '2022-05-07 09:02:51', 0),
(103, 'PUTRI LARASATI', '2022', '', '', '', '', '081240359160', 'putlrsti028@gmail.com', 'Babadsari ', 'ikan hiu makan tomat Alhamdulillah tamat', '', '2022-05-07 09:05:30', 0),
(104, 'Liana Dwi Yuliyanti', '2022', '', 'UIN Profesor K. H. Saifuddin Zuhri Purwokerto', 'Kementrian ', 'Jalan Ahmad Yani No. 40A, Purwokerto.', '085727514049', 'lianadwiy919@gmail.com', 'Jatipurus Rt.02/Rw.1, Poncowarno, Kebumen', 'Jadilah orang yang oercaya diri, jangab ketergantungan dengan orang lain. ', '', '2022-05-07 09:14:34', 0),
(105, 'NOVI SUCIANI', '2022', '', '', '', '', ' 085600677891', '', '', '', '', '2022-05-07 09:15:48', 0),
(106, 'Rizki Tri Nur Halizah ', '2022', '', '', '', '', '083826166566', 'kikitri179@gmail.com', 'Dukuhrejosari RT 02/03, Ambal ', '', '', '2022-05-07 09:19:30', 0),
(107, 'Rizki Tri Nur Halizah ', '2022', '', '', '', '', '083826166566', 'kikitri179@gmail.com', 'Dukuhrejosari RT 02/03, Ambal ', '', '', '2022-05-07 09:19:30', 0),
(108, 'Fasya Sulthon Amin', '2022', '', '-', '-', '-', '081229307094', 'fasyaamin4@gmail.com', 'Tlogorejo,Karangawen,Demak', '•Terima kasih banyak untuk MANEGA ku tercinta.Saya mendapatkan banyak pengalaman yang tak terduga selama bersekolah di MANEGA??\r\n•Semoga ilmuku bisa bermanfaat selama menuntut ilmu di MANEGA????....Amiin????\r\n•Basically MAN 3 KEBUMEN is the best school????????', '8209b3ca8287bb0b0d755a840737bd5c.jpg', '2022-05-07 09:21:56', 0),
(109, 'Silvi Nuraeni ', '2022', '', '-', 'Man 3 kebumen ', 'Man 3 kebumen', '081227617983', 'silvinuraeni70193@gmail.com', 'RT 01 RW 03 desa jlegiwinangun kec Kutowinangun kab kebumen Jawa tengah ', 'Senang bersekolah di man 3 kebumen ', '835ae90cf5cfefdbd162947f00404300.jpg', '2022-05-07 09:22:25', 0),
(110, 'Silvi Nuraeni ', '2022', '', '-', 'Man 3 kebumen ', 'Man 3 kebumen', '081227617983', 'silvinuraeni70193@gmail.com', 'RT 01 RW 03 desa jlegiwinangun kec Kutowinangun kab kebumen Jawa tengah ', 'Senang bersekolah di man 3 kebumen ', 'a58888e058096a099404194193ad0e1d.jpg', '2022-05-07 09:22:32', 0),
(111, 'Putri Annisa', '2022', '', '-', '-', '-', '0882005328406', 'putriannisa5252@gmail.com', 'RT 01/RW 02 ,Dusun Kalitapen ,Desa Korowelang ,kec. Kutowinangun, kab. Kebumen, JawaTengah', 'Sekolah ini telah banyak memberikan pelajaran kepada saya,sekolah ini telah membentuk saya menjadi karakter yang jauh lebih baik dari sebelumnya .ini semua karena para guru uang selalu ada untuk membimbing saya ,menunjukan kepada saya yang mana yang benar dan mana yang salah .selain itu , teman-teman juga sangat bermakna dihari saya. Tanpa mereka saya bukan lah siapa-siapa .saya yakin besok atau lusa saya akan sangat merindukan kebersamaan kita selama ini.', '90abfa76314f02c5be3a0d8152b8008f.jpg', '2022-05-07 09:22:43', 0),
(112, 'Yusuf Ryan Bachtiar ', '2022', '', '', '', '', '085746701543', 'ucuppotka@gmail.com', 'lumbu 01/01 Kutowinangun kebumen', '', '', '2022-05-07 09:53:43', 0),
(113, 'Alwi masykur', '2022', '', '', '', '', '083129539187', 'alwimaskur917@gmail.com', 'Ampih RT02 RW03 Kecamatan Buluspesantren Kab kebumen ', 'jadi banyak teman trus juga dapet pengalaman organisasi dan juga terimakasih untuk bpk ibu guru yang sudah sabar dalam mengajar saya selama ini ', '', '2022-05-07 10:04:42', 0),
(114, 'Cinta farrihusna kastin', '2022', '', '', '', '', '085156083907', 'cintafarrihusna05@gmail.com', 'Pandansari sruweng', 'Jika anda merasa tidak berguna. Ingatlah, Memang.', '', '2022-05-07 10:31:28', 0),
(115, 'Muhammad nur Ihsan ', '2022', '', '', '', 'Jogopaten Tepus lor', '083898803879', 'gomadikh@gmail.com', 'Jogopaten ', 'Semoga meraih sukses menjadi alumni man 3 kebumen ', '56afac8471638460003377e60b42cbfb.jpg', '2022-05-07 11:04:41', 0),
(116, 'Mauliddyna Nur A''ini', '2022', '', 'Universitas Ahmad Dahlan', 'UAD', 'Yogyakarta', '085725336016', 'kebumendina0@gmail.com', 'Sembirkadipaten', 'Senang bersekolah di man 3 kebumen', 'e90dcc87c96c51084ae85f6160652aad.jpg', '2022-05-07 11:37:57', 0),
(117, 'Dwi Rahayuningsih', '2022', '', '-', '-', '-', '085210461406', 'rahayuningsihdwi914@gmail.com', 'Ungaran, Kutowinangun, Kebumen', 'Tetap semangat dalam menuntut ilmu jangan malesan', '281e2d66276c9da1dc85108b5dc09717.jpg', '2022-05-07 12:11:34', 0),
(118, 'Atikah Hilmi Farida ', '2022', '', '', '', '', '083898803724', 'atikahhilmi192@gmail.com', 'Karangsari Kutowinangun Kebumen ', '', '', '2022-05-07 12:14:03', 0),
(119, 'Homsatun Nisa', '2022', '', 'Man 3 kebumen', '', '', '081239183336', 'khomsatunnisa2003@gmail.com', 'Tirtomoyo poncowarno', 'Tetaplah semangat', '', '2022-05-07 16:41:51', 0),
(120, 'Fini Auliya Fikriyani', '2022', '', 'UNTIDAR', 'UNTIDAR', 'Jl. Kapten Suparman 39 Potrobangsan, Magelang Utara, Jawa Tengah 56116', '085790484650', 'fikriyanifini@gmail.com', 'Desa Mulyosri RT 02/02,Prembun,Kebumen', 'Madrasah banyak mengajarkan saya tentang kehidupan dan dan bagaimana cara mengisi dan menjalani hidup dengan hal- hal yang positif. " Sebaik baik manusia adalah yang bermanfaat bagi orang lain"\r\n—MADRASAH HEBAT BERMARTABAT—', '', '2022-05-08 04:25:00', 0),
(121, 'INDAH SETIANI', '2022', '', '', '', '', '082327373867', 'setianiindah380@gmail.com', 'Sitibentar, kwc mirit, kab. Kebumen', '', '07ebd9cdbaf43231d29dbd343db2c8d6.png', '2022-05-09 22:39:37', 0),
(122, 'Durrotul Ma''lufah ', '2022', '', '-', '-', '-', '083840877272', 'www.ufah@gmail.com', 'Kedung Bulus, Prembun, Kebumen ', 'Be yourself', '706b713f521bfaa3c795411e27d50bee.jpg', '2022-05-10 06:55:53', 0),
(123, 'Nisa Ul Khoeriyah', '2022', '', '-', '-', '-', '089606628564', 'babadsari.013@gmail.com', 'Babadsari, Kutowinangun, Kebumen', 'Jika harimu tidak menyenangkan ga pp, itukan harimu bukan hariku ahahaha', '39aefd5c6a03fd459a66c1cff326b914.jpg', '2022-05-11 17:01:35', 0),
(124, 'Elva Sevi Riasti', '2022', '', '-', '-', 'Kutowinangun', '085740304075', 'elvasevi3@gmail.com', 'Tasikmadu', 'Saya sangat bahagia bisa bersekolah di sini, semua pengajarnya ramah dan penuh dengan kesabaran. Banyak hal yang sudah saya pelajari, selain ilmu yang saya dapat, juga teman yang begitu baik dan ramah.', '4cb515e375101196e492a74200d19af9.jpg', '2022-05-20 13:40:46', 0),
(125, 'Tunjiyah', '1990', '', '', '', '', '', '', '', '', '', '2022-05-24 08:52:59', 0),
(126, 'Fikri Nurdi Yani ', '2022', '', '-', '-', '-', '081215460951', 'fikrinurdiyani@gmail.com', 'Lumbu, kutowinangun RT 02 RW 01', 'finally, 3 tahun yang istimewa', 'b101bc8749480aafe62b8e8548a5a9f6.jpg', '2022-05-27 15:21:52', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kalender`
--

CREATE TABLE `tb_kalender` (
  `id` int(11) NOT NULL,
  `kalender` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kalender`
--

INSERT INTO `tb_kalender` (`id`, `kalender`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(3) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `duk` varchar(20) NOT NULL,
  `niplama` varchar(25) NOT NULL,
  `nuptk` varchar(25) NOT NULL,
  `nokarpeg` varchar(12) NOT NULL,
  `golruang` varchar(5) NOT NULL,
  `statuspeg` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmt_cpns` date NOT NULL,
  `tmt_pns` date NOT NULL,
  `jk` char(1) NOT NULL,
  `agama` char(1) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pt` varchar(60) NOT NULL,
  `tingkat_pt` varchar(20) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `th_lulus` varchar(4) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kkm`
--

CREATE TABLE `tb_kkm` (
  `id_kkm` int(3) NOT NULL,
  `id_kurikulum` int(3) NOT NULL,
  `kkm1p` int(3) NOT NULL,
  `kkm1k` int(3) NOT NULL,
  `kkm1s` char(1) NOT NULL,
  `kkm2p` int(3) NOT NULL,
  `kkm2k` int(3) NOT NULL,
  `kkm2s` char(1) NOT NULL,
  `kkm3p` int(3) NOT NULL,
  `kkm3k` int(3) NOT NULL,
  `kkm3s` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kurikulum`
--

CREATE TABLE `tb_kurikulum` (
  `id_kurikulum` int(3) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `alokasi` int(2) NOT NULL,
  `kelompok` varchar(5) NOT NULL,
  `no_urut` int(2) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kurikulum`
--

INSERT INTO `tb_kurikulum` (`id_kurikulum`, `mapel`, `alokasi`, `kelompok`, `no_urut`, `is_active`) VALUES
(1, 'Al-qur''an Hadist', 4, 'A', 1, 1),
(2, 'Akidah Akhlak', 4, 'A', 2, 1),
(3, 'Fiqih', 2, 'A', 3, 1),
(4, 'Sejarah Kebudayaan Islam', 2, 'A', 4, 1),
(5, 'Pendidikan Pancasila dan Kewarganegaraan', 2, 'A', 5, 1),
(6, 'Bahasa Indonesia', 4, 'A', 6, 1),
(7, 'Bahasa Arab', 4, 'A', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_link`
--

CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `link` text NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_link`
--

INSERT INTO `tb_link` (`id`, `nama`, `link`, `is_active`) VALUES
(1, 'HALAMAN PPDB', 'https://ppdb.man3kebumen.sch.id/', 1),
(2, 'E-Learning Kementerian Agama', 'https://elearning.man3kebumen.sch.id/', 1),
(3, 'RAPOT DIGITAL MADRASAH (RDM) ', 'http://rdm.man3kebumen.sch.id/', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `dibaca` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `tgl` datetime NOT NULL,
  `slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id`, `nama`, `isi`, `gambar`, `dibaca`, `id_user`, `is_active`, `hari`, `tgl`, `slug`) VALUES
(2, 'Pendaftaran Peserta Didik Baru MAN 3 Kebumen sudah dibuka', '<p xss="removed"><font xss="removed"><span xss="removed"><b>SELAMAT BERGABUNG DENGAN MANEGA (MAN 3 KEBUMEN)</b></span></font></p><p xss="removed"></p><div xss="removed"><span xss="removed"><b>PPDB MAN 3 KEBUMEN</b></span></div><div xss="removed"><span xss="removed"><b>TAHUN PELAJARAN 2021/2022</b></span></div><p xss="removed"></p><p xss="removed"><b><font xss="removed"><span xss="removed"><span xss="removed">Pilihan Jurusan              </span></span></font>      </b><font xss="removed"><span xss="removed"><span xss="removed"><b>Pilihan Pelatihan</b></span></span><br>1. IPA </font>                                    <font xss="removed">1. Multimedia<br>2. IPS </font>                                    <font xss="removed">2. Menjahit<br>3. Kegamaan </font>                        <font xss="removed">3. Tata Boga<br></font>                                              <font xss="removed">4. Programmer Dasar<br><br><span xss="removed"><span xss="removed"><b>Syarat pendaftaran<br></b></span></span></font><span xss="removed"><b>(Harap disiapkan sebelum mendaftar Online)</b></span></p><p xss="removed"><font xss="removed">1. FC Akte Kelahiran ( Asli dan Fotokopi)<br>2. FC NISN<br>3. FC KK<br>4. FC KTP Ayah dan Ibu<br>5. FC KK dan KTP Wali (jika tinggal dengan Wali)<br>6. FC KIP (jika ada)<br>7. FC Piagam Penghargaan (Jika ada)</font></p><p><font xss="removed"></font></p><p xss="removed"><font xss="removed">Untuk mendaftar silahkan </font><font xss="removed"><a href="https://forms.gle/fcYuuyj5sMvpbEVo6" target="_blank" xss="removed">KLIK DISINI</a><br>- Jurnal Pendaftaran KLIK DISINI</font></p>', '800d5e9885079a445309e748891f19f8.jpeg', 1423, 1, 1, 'Senin', '2022-05-29 12:52:19', 'pendaftaran-peserta-didik-baru-man-3-kebumen-sudah-dibuka'),
(3, 'PENGUMUMAN KELULUSAN PESERTA DIDIK KELAS XII TAHUN PELAJARAN 2020/2021', '<p><span xss="removed"><b>PETUNJUK PENGUMUMAN KELULUSAN ONLINE MAN 3 KEBUMEN TAHUN 2021</b></span><br></p><p>1. Intsall Aplikasi Whatsapp</p><p>2. <span xss="removed">Klik Tombol KLIK PENGUMUMAN</span></p><p><span xss="removed">3. </span><span xss="removed">Klik Lanjutkan Chat</span></p><p><span xss="removed">4. </span><span xss="removed">Ketikan dengan Format Kelas [spasi] Nama Lengkap (contoh : XII AGAMA Ananda Sholehah Fitriyaningsih) klik kirim</span></p><p><span xss="removed">5. </span><span xss="removed">Tunggu beberapa saat hingga terkirim Pengumuman</span></p><p><span xss="removed"><br></span></p><div xss="removed"><span xss="removed">Klik Tombol Dibawah ini</span></div><div xss="removed"><img data-filename="IMG_20210502_211946.jpg" xss="removed"><span xss="removed"><br></span></div><p><span xss="removed"></span></p><table class="table table-bordered" xss="removed"><tbody><tr><td><p>=== <a href="https://api.whatsapp.com/send/?phone=6283120684915&text&app_absent=0" target="_blank">KLIK PENGUMUMAN</a><span xss="removed"> ====</span></p></td></tr></tbody></table>', 'c5302682a1de31af94a9c08aba89289d.jpg', 877, 1, 1, 'Minggu', '2022-05-29 10:25:05', 'pengumuman-kelulusan-peserta-didik-kelas-xii-tahun-pelajaran-2020-2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prestasi_guru`
--

CREATE TABLE `tb_prestasi_guru` (
  `id` int(3) NOT NULL,
  `id_tahun` int(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prestasi` varchar(100) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `jenis` int(2) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prestasi_sekolah`
--

CREATE TABLE `tb_prestasi_sekolah` (
  `id` int(3) NOT NULL,
  `id_tahun` int(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prestasi` varchar(100) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `jenis` int(2) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prestasi_siswa`
--

CREATE TABLE `tb_prestasi_siswa` (
  `id` int(3) NOT NULL,
  `id_tahun` int(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prestasi` varchar(100) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `jenis` int(2) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id` int(11) NOT NULL,
  `nama_web` varchar(100) NOT NULL,
  `jenjang` int(2) NOT NULL,
  `logo_web` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `meta_description` varchar(300) NOT NULL,
  `meta_keyword` varchar(200) NOT NULL,
  `profil` text NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `akreditasi` varchar(5) NOT NULL,
  `kurikulum` varchar(30) NOT NULL,
  `file` varchar(250) NOT NULL,
  `nama_kepsek` varchar(100) NOT NULL,
  `nama_operator` varchar(100) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `tb_profil` (`id`, `nama_web`, `jenjang`, `logo_web`, `favicon`, `meta_description`, `meta_keyword`, `profil`, `alamat`, `email`, `telp`, `fax`, `whatsapp`, `akreditasi`, `kurikulum`, `file`, `nama_kepsek`, `nama_operator`, `instagram`, `facebook`, `twitter`, `youtube`, `gambar`) VALUES
(1, 'MAN 3 KEBUMEN', 4, '8f5b7764a200aab0aaa4c8889d802ae3.png', '8c5c096fb7b9cc3268d790e8da6de096.ico', 'Selamat datang di website MAN 3 KEBUMEN', 'MAN 3 KEBUMEN', '', 'Jalan Pencil Nomor 47, Kutowinangun, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54393', 'mankutowinangun@kemenag.go.id', '(0287) 661119', '-', '', 'A', 'Kurikulum 2013', '', '-', '-', 'https://www.instagram.com/man3kebumen/', 'https://web.facebook.com/man3kebumen/', '', 'https://www.youtube.com/channel/UC_gRTrFE-s6ox-NeaLIC9LA', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rekap_un`
--

CREATE TABLE `tb_rekap_un` (
  `id_un` int(5) NOT NULL,
  `id_kurikulum` int(3) NOT NULL,
  `tertinggi` int(3) NOT NULL,
  `terendah` int(3) NOT NULL,
  `rata` int(3) NOT NULL,
  `id_tahun` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rekap_us`
--

CREATE TABLE `tb_rekap_us` (
  `id_us` int(5) NOT NULL,
  `id_kurikulum` int(3) NOT NULL,
  `tertinggi` int(3) NOT NULL,
  `terendah` int(3) NOT NULL,
  `rata` int(3) NOT NULL,
  `id_tahun` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sarpras`
--

CREATE TABLE `tb_sarpras` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sarpras`
--

INSERT INTO `tb_sarpras` (`id`, `isi`) VALUES
(1, '<p><br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sejarah`
--

CREATE TABLE `tb_sejarah` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sejarah`
--

INSERT INTO `tb_sejarah` (`id`, `isi`) VALUES
(1, '<p xss="removed">Nama Sekolah   : MAN 3 Kebumen</p><p xss="removed">NSM                 : 131133050004</p><p xss="removed">SK Pendirian     :</p><ol><li xss="removed">1.No.13 / 1858 A. P    : PGA 6 Tahun, terdaftar pada kepaniteraan Pengadilan Negeri Kebumen</li><li xss="removed">2. No. 289 / D2 /69   : PGA 6 Tahun berubah menjadi PGAN 4 Tahun berdasarkan persetujuan Direktorat Jenderal Bimbingan Masyarakat Islam</li><li xss="removed">3. NO. 67 / 1970         : PGAN 4 Tahun menjadi PGAN 6 Tahun, berdasarkan    Surat Keputusan Menteri Agama</li><li xss="removed">4. No. 17 / 1978         : PGAN 6 Tahun berubah menjadi Madrasah Aliyah Negeri Kutowinangun, berdasarkan Surat Keputusan Menteri Agama Republik Indonesia</li><li xss="removed">5. No. 810 / 2017       : Perubahan Nama Madrasah Aliyah Negeri Kutowinangun menjadi Madrasah Aliyah Negeri 3 Kebumen, berdasarkan Surat Keputusan Menteri Agama Republik Indonesia</li></ol><p xss="removed">Sejarah Singkat Berdirinya MAN 3 Kebumen</p><p xss="removed">Madrasah Aliyah Negeri Kutowinangun, berdiri berdasarkan atas kelanjutan dari Yayasan Pendidikan Islam (YPI) yang didirikan pada tanggal 6 September 1958, No.6 dan terdaftar pada Kepaniteraan Pengadilan Negeri Kebumen No. 13 / 1958 A.P.</p><p xss="removed">Yayasan Pendidikan Islam didirikan oleh tokoh masyarakat islam setempat yang terdiri dari :</p><p xss="removed">Ketua                           : Tuan Yusuf Soebagiono</p><p xss="removed">Wakil Ketua                 : Tuan M uljokertomo</p><p xss="removed">Penulis                        : Abdul Syukur</p><p xss="removed">Wakil Penulis               : Tuan Wahjoe</p><p xss="removed">Bendahara                   : Tuan Kertodihardjo</p><p xss="removed">Wakil Bendahara          : Tuan Muhamad Damari</p><p xss="removed">Pembantu Umum         : 1. Tuan Muhamad Tafsir</p><p xss="removed">                                    2. Tuan Muhamad Leksan</p><p xss="removed">                                    3. Tuan Atmadiwirjo</p><p xss="removed">Yayasan Pendidikan Islam tersebut mendirikan PGA 6 Tahun (Swasta) dengan Kepala, Bapak Kusumasdeman, seorang Guru Agama dari Departemen Agama Kabupaten Kebumen. Untuk Penyelenggaraan Pendidikan menggunakan bangunan / gedung milik bapak Yusuf Soebagiono Ketua Yayasan Pendidikan Islam.</p><p xss="removed">Berdasarkan persetujuan Direktur Jenderal Bimbingan Masyarakat Islam No. 289/D2 / 69 Tanggal 21 Mei 1969 tentang pendirian PGA 4Tahun. Pada tanggal 28 Juni 1969 berdasarkan Surat Keputusan Menteri Agama No. 53/169 menetapkan bahwa siswa yang lulus PGAN 6Tahun di Magelang. Untuk selanjutnya berdasarkan Surat Keputusan Menteri Agama No. 67 Tahun 1970 tertanggal 14 Mei 1970, PGAN  Kutowinangun  4 Tahun berubah menjadi PGAN Kutowinangun  6 Tahun. Kemudian pada Tahun 1978 berdasarkan Surat Keputusan Menteri Agama Republik Indonesia No. 17 Tahun 1978 tentang Susunan Organisasi dan tata kerja Madrasah Aliyah Negeri Kutowinangun dengan tanggal ditetapkan pada16 Maret 1978, maka PGAN 6 Tahun berubah bentuk/ fungsi menjadi Madrasah Aliyah Negeri Kutowinangun. Sesuai KMA 810 Tahun 2017 tentang perubahan Nama MAN,MTs dan MINTA di Provinsi Jawa Tengah akhirnya MAN Kutowinangun berubah nama menjadi MAN 3 Kebumen. </p><p xss="removed">Adapun Kepala pimpinan lembaga pendidikan ini sejak awal sampai dengan sekarang adalah sebagai berikut:</p><p xss="removed">1.      Kusumas Deman tahun 1969 s/d tahun 1981 (PGA sampai menjadi MAN)</p><p xss="removed">2.      A. Suhadi B.A Tahun 1981 s/d 1990</p><p xss="removed">3.      H. Suparlan B.A Tahun 1990 s/d 1994</p><p xss="removed">4.      Drs. H. Daerobi Tahun 1994 s/d 1997</p><p xss="removed">5.      Drs. Djahidul Wa’di Tahun 1997 s/d 2000</p><p xss="removed">6.      Drs. H. Masagus Syamsuddin,S.Pd.M.Ag. Tahun 2000 s/d 2011</p><p xss="removed">7.      Drs.H.Dasuki Anwar, M.Ag Tahun 2011 s/d 2013  </p><p xss="removed">8.      Drs.H.Anang taufik Ghufron, M.Ag Tahun 2013 s/d 2016</p><p xss="removed">9.      Drs. H. Moh. Dawamudin, M.Ag (sebagai Plt)</p><p xss="removed">10.    Drs. Muntohar (2016 s/d 2021)</p><p xss="removed">11.    Drs. H. Wachid Adib, M.Si (Plt Kepala Madrasah) </p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(3) NOT NULL,
  `id_tahun` int(3) NOT NULL,
  `jml1pa` int(5) NOT NULL,
  `jml1pi` int(5) NOT NULL,
  `jml2pa` int(5) NOT NULL,
  `jml2pi` int(5) NOT NULL,
  `jml3pa` int(5) NOT NULL,
  `jml3pi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `id_tahun`, `jml1pa`, `jml1pi`, `jml2pa`, `jml2pi`, `jml3pa`, `jml3pi`) VALUES
(1, 2, 57, 184, 41, 143, 35, 96);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_statistik`
--

CREATE TABLE `tb_statistik` (
  `ip` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_statistik`
--

INSERT INTO `tb_statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('::1', '2021-06-27', 1, '1624795082'),
('::1', '2021-06-30', 131, '1625040479'),
('::1', '2021-07-01', 8, '1625160725'),
('::1', '2021-07-09', 10, '1625796466'),
('::1', '2022-05-28', 1, '1653719577'),
('::1', '2022-05-29', 295, '1653812150'),
('::1', '2022-05-30', 14, '1653886587'),
('::1', '2022-05-31', 7, '1653984176'),
('::1', '2022-06-11', 120, '1654954771'),
('::1', '2022-06-12', 234, '1655020620'),
('::1', '2022-06-17', 31, '1655434525'),
('::1', '2022-06-29', 3, '1656487966'),
('::1', '2022-07-02', 14, '1656746016'),
('::1', '2022-07-03', 3, '1656809065'),
('::1', '2022-07-08', 1, '1657262045'),
('::1', '2022-07-13', 3, '1657698004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_struktur_organisasi`
--

CREATE TABLE `tb_struktur_organisasi` (
  `id` int(11) NOT NULL,
  `isi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_struktur_organisasi`
--

INSERT INTO `tb_struktur_organisasi` (`id`, `isi`) VALUES
(1, 'f8a4b172740285305d2ec7f11b2adfc8.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahun`
--

CREATE TABLE `tb_tahun` (
  `id_tahun` int(3) NOT NULL,
  `tahun` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tahun`
--

INSERT INTO `tb_tahun` (`id_tahun`, `tahun`) VALUES
(1, '2019/2020'),
(2, '2020/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `email`, `level`, `is_active`) VALUES
(1, 'Administrator', 'satrio', '$2y$10$QEA45D5n9IX1sVP6qkJCduJ6XwrL2yM/RAAEl71XmsG4idx7cAxy2', 'example@gmail.com', 'superadmin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_video`
--

CREATE TABLE `tb_video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `link` varchar(100) NOT NULL,
  `uploaded_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_video`
--

INSERT INTO `tb_video` (`id_video`, `judul`, `keterangan`, `link`, `uploaded_on`) VALUES
(1, 'Profil Asrama Putri Al Maunah MAN 3 Kebumen || JST Multimedia [Naff Official]', 'Video ini dibuat sebagai tugas Kelompok Pelatihan Multimedia MAN 3 Kebumen Angkatan III dan IV Tahun 2021', 'PQeR0xxmy0Y', '2022-05-30 07:15:34'),
(2, 'Hari Lebaran || Cahaya Accoustic MAN 3 Kebumen || Cover', 'Terimakasih Kepada Segenap Keluarga Besar MAN 3 Kebumen\r\n1. Guru dan Pegawai\r\n2. Group Musik Cahaya Acoustic OSIS MAN 3 Kebumen\r\n3. Team Multimedia MAN 3 Kebumen', 'IhC-4Dk2iiE', '2022-05-30 07:19:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_visimisi`
--

CREATE TABLE `tb_visimisi` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_visimisi`
--

INSERT INTO `tb_visimisi` (`id`, `isi`) VALUES
(1, '<p xss="removed">VISI</p><p xss="removed"><span xss="removed">"Terwujudnya Generasi yang Religius, Cerdas, Mandiri, dan Peduli Lingkungan</span>"</p><p xss="removed">MISI</p><ol><li><span xss="removed">Meningkatkan kualitas kegiatan keagamaan agar peserta didik istiqomah dalam pengamalan ajaran Islam</span></li><li><span xss="removed">Melaksanakan pembelajaran dan bimbingan secara efektif, sehingga setiap peserta didik dapat berkembang secara optimal, sesuai dengan potensi yang dimiliki.</span></li><li><span xss="removed">Melaksanakan program life-skill agar peserta didik memiliki karakter mandiri.</span></li><li><span xss="removed">Menumbuhkan budaya disiplin dan bersih di lingkungan Madrasah.</span></li></ol>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_download`
--
ALTER TABLE `tb_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ekstrakurikuler`
--
ALTER TABLE `tb_ekstrakurikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_isialumni`
--
ALTER TABLE `tb_isialumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kalender`
--
ALTER TABLE `tb_kalender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kkm`
--
ALTER TABLE `tb_kkm`
  ADD PRIMARY KEY (`id_kkm`);

--
-- Indexes for table `tb_kurikulum`
--
ALTER TABLE `tb_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `tb_link`
--
ALTER TABLE `tb_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prestasi_guru`
--
ALTER TABLE `tb_prestasi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prestasi_sekolah`
--
ALTER TABLE `tb_prestasi_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prestasi_siswa`
--
ALTER TABLE `tb_prestasi_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rekap_un`
--
ALTER TABLE `tb_rekap_un`
  ADD PRIMARY KEY (`id_un`);

--
-- Indexes for table `tb_rekap_us`
--
ALTER TABLE `tb_rekap_us`
  ADD PRIMARY KEY (`id_us`);

--
-- Indexes for table `tb_sarpras`
--
ALTER TABLE `tb_sarpras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sejarah`
--
ALTER TABLE `tb_sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_struktur_organisasi`
--
ALTER TABLE `tb_struktur_organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tahun`
--
ALTER TABLE `tb_tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_video`
--
ALTER TABLE `tb_video`
  ADD PRIMARY KEY (`id_video`);

--
-- Indexes for table `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `id_album` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_alumni`
--
ALTER TABLE `tb_alumni`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_download`
--
ALTER TABLE `tb_download`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_ekstrakurikuler`
--
ALTER TABLE `tb_ekstrakurikuler`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_foto`
--
ALTER TABLE `tb_foto`
  MODIFY `id_foto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `tb_isialumni`
--
ALTER TABLE `tb_isialumni`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `tb_kalender`
--
ALTER TABLE `tb_kalender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kkm`
--
ALTER TABLE `tb_kkm`
  MODIFY `id_kkm` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kurikulum`
--
ALTER TABLE `tb_kurikulum`
  MODIFY `id_kurikulum` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_link`
--
ALTER TABLE `tb_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_prestasi_guru`
--
ALTER TABLE `tb_prestasi_guru`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_prestasi_sekolah`
--
ALTER TABLE `tb_prestasi_sekolah`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_prestasi_siswa`
--
ALTER TABLE `tb_prestasi_siswa`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_rekap_un`
--
ALTER TABLE `tb_rekap_un`
  MODIFY `id_un` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_rekap_us`
--
ALTER TABLE `tb_rekap_us`
  MODIFY `id_us` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_sarpras`
--
ALTER TABLE `tb_sarpras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sejarah`
--
ALTER TABLE `tb_sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_struktur_organisasi`
--
ALTER TABLE `tb_struktur_organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_tahun`
--
ALTER TABLE `tb_tahun`
  MODIFY `id_tahun` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_video`
--
ALTER TABLE `tb_video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_visimisi`
--
ALTER TABLE `tb_visimisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
