-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Okt 2023 pada 19.40
-- Versi server: 10.2.44-MariaDB-cll-lve
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa1544_db_webdesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `agama_id` int(11) NOT NULL,
  `agama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`agama_id`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Khatolik'),
(4, 'Buddha'),
(5, 'Hindu'),
(6, 'Kong Hu Chu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `judul`, `id_kat`, `kddesa`) VALUES
(2, 'Kegiatan Penanganan Covid-19', 2, 1),
(3, 'Kegiatan Kebudayaan Bangreng', 2, 1),
(4, 'Wisata Alam', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `allsetting`
--

CREATE TABLE `allsetting` (
  `kddesa` int(11) NOT NULL,
  `desa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `allsetting`
--

INSERT INTO `allsetting` (`kddesa`, `desa`) VALUES
(1, 'Cikandung\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggotaumkm`
--

CREATE TABLE `anggotaumkm` (
  `id_anggota` int(11) NOT NULL,
  `id_umkm` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggotaumkm`
--

INSERT INTO `anggotaumkm` (`id_anggota`, `id_umkm`, `id`, `keterangan`, `kddesa`) VALUES
(9, 4, 13, 'Bagian Keuangan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aparat`
--

CREATE TABLE `aparat` (
  `pamong_id` int(5) NOT NULL,
  `id` int(11) NOT NULL,
  `pamong_nama` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_nip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_nik` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jabatan` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `pamong_tgl_terdaftar` date DEFAULT NULL,
  `pamong_ttd` tinyint(1) DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pamong_tempatlahir` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_tanggallahir` date DEFAULT NULL,
  `pamong_sex` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_pendidikan` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_agama` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_nosk` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_tglsk` date DEFAULT NULL,
  `pamong_pangkat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pamong_nipd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `aparat`
--

INSERT INTO `aparat` (`pamong_id`, `id`, `pamong_nama`, `pamong_nip`, `pamong_nik`, `jabatan`, `pamong_tgl_terdaftar`, `pamong_ttd`, `foto`, `pamong_tempatlahir`, `pamong_tanggallahir`, `pamong_sex`, `pamong_pendidikan`, `pamong_agama`, `pamong_nosk`, `pamong_tglsk`, `pamong_pangkat`, `pamong_nipd`, `kddesa`) VALUES
(10, 0, 'Arie Rukmana', '2634441412', '3332323232', 'Kepala Desa', NULL, NULL, '', 'c', '2022-02-16', '1', '1', '1', '21243123', '2022-02-21', '3B', '22451532432', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `isi` text NOT NULL,
  `enabled` int(2) NOT NULL,
  `tgl_upload` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `judul` varchar(100) NOT NULL,
  `gambar1` text NOT NULL,
  `gambar2` text NOT NULL,
  `gambar3` text NOT NULL,
  `dokumen` text NOT NULL,
  `nama_dokumen` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `gambar`, `isi`, `enabled`, `tgl_upload`, `judul`, `gambar1`, `gambar2`, `gambar3`, `dokumen`, `nama_dokumen`, `slug`, `id_kat`, `kddesa`) VALUES
(9, 'omicron.jpeg', '<p>Varian Omicron saat ini semakin mendominasi di dunia. Bahkan kemunculannya ini hampir menggeser varian Delta yang sebelumnya juga mendominasi banyak negara, termasuk Indonesia, beberapa waktu lalu.<br />\r\nKemunculannya tentu menimbulkan kekhawatiran baru. Sebab, Omicron ini terbukti cerdik dalam menghindari antibodi yang terbentuk oleh vaksinasi. Hal ini membuat orang yang sudah divaksinasi penuh masih bisa terinfeksi varian Omicron.<br />\r\n<br />\r\nHal ini juga dibuktikan dalam laporan pada 30 November 2021 dari Institut Kesehatan Masyarakat Norwegia (NIPH). Dalam laporan tersebut, dari 117 orang tamu sebuah pesta yang positif Corona, sebanyak 66 orang terinfeksi varian Omicron.<br />\r\n<br />\r\nBaca artikel detikHealth, &quot;Waspada, 13 Gejala Omicron yang Muncul Pada Orang yang Sudah Divaksin&quot; selengkapnya https://health.detik.com/berita-detikhealth/d-5949460/waspada-13-gejala-omicron-yang-muncul-pada-orang-yang-sudah-divaksin.</p>\r\n', 1, '2022-03-05 11:55:33', 'Penangan dan kewaspadaan warga masyarakat terhadap Covid-19 Omicron', 'Foto-1mitos-vs-fakta-omicron.jpg', 'ilustrasi-varian-omicron_169.jpeg', '', 'po.txt', 'data_omicron', 'Penangan dan kewaspadaan warga masyarakat terhadap Covid-19 Omicron...', 7, 1),
(12, 'berita_20220202055915.jpg', '<p>Dinas Koperasi UMKM Perindustrian dan Perdagangan (Diskopumkmperindag) Kabupaten Sumedang bekerjasama dengan distributor minyak goreng, menggelar penjualan minyak goreng kemasan, Selasa (1/2/2022). Penjualan dilakukan untuk membantu masyarakat memenuhi kebutuhan minyak goreng sesuai harga eceran tertinggi, Rp 14.000 per liter. Penjualan digelar di 2 lokasi, yakni depan Alun-Alun Sumedang, dan kawasan Taman Telor. &quot;Sebelumnya kami melakukan pengecekan ke distributor dan ritel-ritel. Ternyata di beberapa ritel itu terjadi kelangkaan,&quot; ujar Kadis Kopumkmperindag Sumedang, Hari Tri Santosa.<br />\r\n<br />\r\nMeski di ritel-ritel terjadi kelangkaan minyak goreng kemasan, namun di tingkat agen dan distributor stok minyak goreng ternyata banyak. &quot;Oleh karena itu kami membantu kami disini membantu menjualkan dengan harga sesuai HET yang ditetapkan pemerintah yakni Rp 14.000 per liter,&quot; ujarnya.<br />\r\n<br />\r\nPada penjualan itu, lanjut Hari, pihaknya menyediakan 2.400 minyak goreng kemasan berisi 1 liter. Satu orang pembeli, kata Hari, hanya boleh membeli maksimal 2 liter.<br />\r\n&quot;Di Alun-alun ini kami siapkan 100 karton (12.000 liter) dan di Taman Endog juga 100 karton,&quot; katanya. [*]</p>\r\n', 1, '2022-03-05 11:55:49', 'Operasi Pasar Minyak Goreng di 2 Titik', '', '', '', '', '', 'Operasi Pasar Minyak Goreng di 2 Titik...', 9, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bantuan`
--

CREATE TABLE `bantuan` (
  `id_program` int(11) NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `asaldana` int(11) NOT NULL,
  `sasaran` int(11) NOT NULL,
  `tgl1` date NOT NULL,
  `tgl2` date NOT NULL,
  `status` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `budaya`
--

CREATE TABLE `budaya` (
  `id_budaya` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `link` text NOT NULL,
  `tipe` int(11) NOT NULL,
  `data` text NOT NULL,
  `tgl_posting` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `budaya`
--

INSERT INTO `budaya` (`id_budaya`, `judul`, `id_kat`, `link`, `tipe`, `data`, `tgl_posting`, `slug`, `isi`, `kddesa`) VALUES
(5, 'Jaran Thek', 2, '0', 1, 'jaran thek.jpg', '2022-02-19 16:31:19', 'Jaran1Thek-', '<p>Masyarakat Ponorogo sebagian menyebut kesenian Jaranan Thek dengan sebutan Reog Thek adapun juga disebut sentherewe, karena mahkota pada barongan Jaran Thek memiliki bentuk daun yang menjulang seperti daun Sente dan Rawe, dalam budaya Reog dadak merak sudah familiar akan sebutan Reog Waru yakni mahkota merak yang mirip dengan daun waru, maka dari itu dalam komunitas seniman yang mengasingkan diri menyebut diri sebagai Reog Senterewe yang berasal dari daun Sente dan rawe.</p>\r\n', 1),
(6, 'Gajah gajahan', 2, '0', 1, 'gajah.jpg', '2022-02-28 15:15:35', 'Gajah1gajahan-', '<p>Gajah-gajahan adalah salah satu bentuk pertunjukan rakyat Ponorogo selain Reog. Jenis kesenian ini diirngi dengan Kompang, Jidor atau Gamelan klasik, terutama alat-alat musiknya. Perbedaannya adalah bahwa kesenian ini tidak memiliki pakem yang tetap mulai alat-alat musik, gerak tari, lagu, dan bentuk musiknya berubah seiring perkembangan zaman. Perbedaan paling utama adalah hadirnya patung gajah yang terbuat dari kertas karton yang dilekatkan pada kerangka bambu. Dari segi simbol binatang yaitu gajah yang dijadikan salah satu alatnya, menunjukkan bahwa gajah adalah binatang yang mudah ditundukkan, santun serta banyak membantu pekerjaan manusia.</p>\r\n', 1),
(7, 'Reog', 2, '', 1, 'reog.jpg', '2023-10-17 10:48:07', 'Reog-', '<p>Reog merupakan salah satu seni budaya yang berasal dari Jawa Timur bagian barat-laut, dan Ponorogo dianggap sebagai kota asal Reog yang sebenarnya. Gerbang kota Ponorogo dihiasi oleh sosok warok dan gemblak, dua sosok yang ikut tampil pada saat Reog dipertunjukkan. Reog adalah salah satu budaya daerah di Indonesia yang masih sangat kental dengan hal-hal yang berbau mistik dan ilmu kebatinan yang kuat.</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `covid_pantau`
--

CREATE TABLE `covid_pantau` (
  `id_pantau` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `tanggal_jam` datetime DEFAULT current_timestamp(),
  `suhu_tubuh` decimal(4,2) DEFAULT NULL,
  `batuk` varchar(20) DEFAULT NULL,
  `flu` varchar(20) DEFAULT NULL,
  `sesak_nafas` varchar(20) DEFAULT NULL,
  `keluhan_lain` varchar(255) DEFAULT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `covid_pantau`
--

INSERT INTO `covid_pantau` (`id_pantau`, `id`, `tanggal_jam`, `suhu_tubuh`, `batuk`, `flu`, `sesak_nafas`, `keluhan_lain`, `kddesa`) VALUES
(18, 16, '2023-10-17 14:01:03', 36.00, 'Ya', NULL, NULL, 'panas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `covid_pemudik`
--

CREATE TABLE `covid_pemudik` (
  `id_terdata` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `tgl_datang` date NOT NULL,
  `asal_mudik` varchar(255) NOT NULL,
  `durasi_mudik` varchar(50) NOT NULL,
  `tujuan_mudik` varchar(255) NOT NULL,
  `keluhan_kesehatan` varchar(255) NOT NULL,
  `status_covid` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email_penduduk` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `wajib_pantau` varchar(20) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `covid_pemudik`
--

INSERT INTO `covid_pemudik` (`id_terdata`, `id`, `tgl_datang`, `asal_mudik`, `durasi_mudik`, `tujuan_mudik`, `keluhan_kesehatan`, `status_covid`, `no_hp`, `email_penduduk`, `keterangan`, `wajib_pantau`, `kddesa`) VALUES
(8, 16, '2022-01-01', 'Jakarta', '15', '3', 'Kembung', '1', '089241423412', 'asda@gmail.com', 'Ini keterangan', '1', 1),
(9, 17, '2022-03-01', 'Bali', '7', '1', 'Rorombeheun', '3', '0892423123312', 'rohmat@gmail.com', 'ini keterangan rohmat', '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_syarat` int(11) NOT NULL,
  `nama_dokumen` varchar(200) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `id`, `id_syarat`, `nama_dokumen`, `slug`, `file`, `kddesa`) VALUES
(7, 12, 1, 'RT', 'rt', 'download.jpg', 1),
(8, 12, 2, 'KK', 'kk', 'infografis-badai-sitokin-pada-covid-19-1.jpeg', 1),
(10, 13, 1, 'Surat Pengantar ', 'surat-pengantar', '4-aksi-nyata-menuju-indonesia-sehat.jpg', 1),
(11, 13, 2, 'FC KK', 'fc-kk', 'shutterstock_140702578.jpg', 1),
(12, 12, 3, 'KTP', 'ktp', 'Untitled.png', 1),
(14, 12, 4, 'Akta Nikah', 'akta-nikah', 'Screen-Shot-2021-08-25-at-06.51.15.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dusun`
--

CREATE TABLE `dusun` (
  `id_dusun` int(11) NOT NULL,
  `namadusun` varchar(255) NOT NULL,
  `kepala_dusun` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dusun`
--

INSERT INTO `dusun` (`id_dusun`, `namadusun`, `kepala_dusun`, `kddesa`) VALUES
(18, 'Dusun Pojok', 'Supriyanto', 1),
(20, 'A', 'Arie Rukmana', 2),
(21, 'Dusun Krajan', 'mimii', 1),
(22, 'Dusun Sidowayah', 'mana', 1),
(23, 'Dusun Pacar', 'asdsadasdas', 1),
(24, 'Dusun Pandewatu', 'Rohmat Rohim', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_album`, `judul`, `foto`, `kddesa`) VALUES
(3, 2, 'asik', 'ilustrasi-olahraga-lari_169.png', 1),
(4, 2, 'TEST', 'Foto-1mitos-vs-fakta-omicron.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `golongan_darah`
--

CREATE TABLE `golongan_darah` (
  `id_golongan` int(11) NOT NULL,
  `nama_golongan` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `golongan_darah`
--

INSERT INTO `golongan_darah` (`id_golongan`, `nama_golongan`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'AB'),
(4, 'O'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-'),
(9, 'AB+'),
(10, 'AB-'),
(11, 'O+'),
(12, 'O-'),
(13, 'TIDAK TAHU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan`
--

CREATE TABLE `hubungan` (
  `id_hubungan` int(10) NOT NULL,
  `nama_hubungan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `hubungan`
--

INSERT INTO `hubungan` (`id_hubungan`, `nama_hubungan`) VALUES
(1, 'KEPALA KELUARGA'),
(2, 'SUAMI'),
(3, 'ISTRI'),
(4, 'ANAK'),
(5, 'MENANTU'),
(6, 'CUCU'),
(7, 'ORANGTUA'),
(8, 'MERTUA'),
(9, 'FAMILI'),
(10, 'PEMBANTU'),
(11, 'LAINNYA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id` int(5) NOT NULL,
  `nama_desa` varchar(100) NOT NULL,
  `kode_desa` varchar(100) NOT NULL,
  `nama_kepala_desa` varchar(100) NOT NULL,
  `nip_kepala_desa` varchar(100) NOT NULL,
  `kode_pos` varchar(6) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_kepala_camat` varchar(100) NOT NULL,
  `nip_kepala_camat` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_propinsi` varchar(100) NOT NULL,
  `kode_propinsi` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `map` varchar(500) DEFAULT NULL,
  `alamat_kantor` varchar(200) DEFAULT NULL,
  `email_desa` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `kantor_desa` varchar(250) DEFAULT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id`, `nama_desa`, `kode_desa`, `nama_kepala_desa`, `nip_kepala_desa`, `kode_pos`, `nama_kecamatan`, `kode_kecamatan`, `nama_kepala_camat`, `nip_kepala_camat`, `nama_kabupaten`, `kode_kabupaten`, `nama_propinsi`, `kode_propinsi`, `logo`, `map`, `alamat_kantor`, `email_desa`, `telepon`, `website`, `kantor_desa`, `kddesa`) VALUES
(1, 'Tugu', '01', 'Supriyanto', '12', '45314', 'Mlarak', '08', 'Hadi Priyanto', '19721127 199201 1 001', 'Ponorogo', '4', 'Jawa Timur', '6545', '1697535475_fd5e8683296914a79e6b.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3951.671605669412!2d111.544456!3d-7.929326000000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e790a47d027d6d5%3A0x47b47c008f94fb1c!2sBalai%20Desa%20Tugu!5e0!3m2!1sid!2sid!4v1697728377958!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'JL. Krakatau, No. 87, Ds. Tugu, Kec. Mlarak, Kabupaten Ponorogo, Jawa Timur 63472', 'desatugu@gmail.com', '(+62) 895-3410-32214', 'www.desatugu.id', '1697536945_6896ff94dbfec1eb2a11.png', 1),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kat_album`
--

CREATE TABLE `kat_album` (
  `id_kat` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kat_album`
--

INSERT INTO `kat_album` (`id_kat`, `kategori`, `kddesa`) VALUES
(2, 'Album 2', 1),
(4, 'Album 2', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kat_artikel`
--

CREATE TABLE `kat_artikel` (
  `id_kat` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kat_artikel`
--

INSERT INTO `kat_artikel` (`id_kat`, `kategori`, `kddesa`) VALUES
(7, 'Covid-19', 1),
(8, 'An', 2),
(9, 'Bahan pangan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kat_budaya`
--

CREATE TABLE `kat_budaya` (
  `id_kat` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kat_budaya`
--

INSERT INTO `kat_budaya` (`id_kat`, `kategori`, `kddesa`) VALUES
(2, 'Album 1', 1),
(5, 'Aasd', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kat_umkm`
--

CREATE TABLE `kat_umkm` (
  `id_kat` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kat_umkm`
--

INSERT INTO `kat_umkm` (`id_kat`, `kategori`, `kddesa`) VALUES
(2, 'PRODUKSI', 1),
(4, 'as', 2),
(5, 'KONSUMSI', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kk`
--

CREATE TABLE `kk` (
  `id_kk` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `no_kk` varchar(100) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kk`
--

INSERT INTO `kk` (`id_kk`, `id`, `no_kk`, `kddesa`) VALUES
(1, 16, '45455454554545455', 1),
(2, 13, '12121212', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_penduduk`
--

CREATE TABLE `log_penduduk` (
  `id_log` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_peristiwa` int(11) NOT NULL,
  `tgl_peristiwa` date NOT NULL,
  `tgl_lapor` date NOT NULL,
  `catatan` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_surat`
--

CREATE TABLE `log_surat` (
  `id_log` int(11) NOT NULL,
  `id_format_surat` int(3) NOT NULL,
  `id_permohonan` int(11) DEFAULT NULL,
  `id_pamong` int(4) NOT NULL,
  `id_user` int(4) NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `bulan` varchar(2) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `file_surat` varchar(100) DEFAULT NULL,
  `lampiran` varchar(100) DEFAULT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `log_surat`
--

INSERT INTO `log_surat` (`id_log`, `id_format_surat`, `id_permohonan`, `id_pamong`, `id_user`, `tanggal`, `bulan`, `tahun`, `no_surat`, `file_surat`, `lampiran`, `kddesa`) VALUES
(73, 24, 1, 0, 14, '2022-02-25', 'II', '2022', '1', NULL, NULL, 1),
(74, 24, 2, 0, 12, '2022-02-25', 'II', '2022', '2', NULL, NULL, 1),
(75, 21, 3, 0, 14, '2022-02-27', 'II', '2022', '1', NULL, NULL, 1),
(76, 21, 5, 0, 12, '2022-02-27', 'II', '2022', '2', NULL, NULL, 1),
(77, 21, 6, 0, 12, '2022-02-27', 'II', '2022', '3', NULL, NULL, 1),
(78, 3, 7, 0, 16, '2022-02-27', 'II', '2022', '1', NULL, NULL, 1),
(79, 3, 8, 0, 12, '2022-02-27', 'II', '2022', '2', NULL, NULL, 1),
(80, 23, 9, 0, 12, '2022-02-28', 'II', '2022', '1', NULL, NULL, 1),
(81, 23, 10, 0, 12, '2022-02-28', 'II', '2022', '2', NULL, NULL, 1),
(82, 18, 11, 0, 12, '2022-02-28', 'II', '2022', '1', NULL, NULL, 1),
(83, 18, 12, 0, 12, '2022-02-28', 'II', '2022', '2', NULL, NULL, 1),
(84, 26, 13, 0, 12, '2022-02-28', 'II', '2022', '1', NULL, NULL, 1),
(85, 26, 14, 0, 14, '2022-02-28', 'II', '2022', '2', NULL, NULL, 1),
(86, 26, 15, 0, 12, '2022-02-28', 'II', '2022', '3', NULL, NULL, 1),
(87, 26, 16, 0, 12, '2022-02-28', 'II', '2022', '4', NULL, NULL, 1),
(88, 41, 1, 0, 12, '2022-03-01', 'II', '2022', '1', NULL, NULL, 1),
(89, 41, 2, 0, 12, '2022-03-01', 'II', '2022', '2', NULL, NULL, 1),
(90, 41, 3, 0, 12, '2022-03-01', 'II', '2022', '3', NULL, NULL, 1),
(91, 1, 4, 0, 12, '2023-10-17', 'X ', '2023', '1', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(10) UNSIGNED NOT NULL,
  `nama_pekerjaan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`) VALUES
(1, 'BELUM/TIDAK BEKERJA'),
(2, 'MENGURUS RUMAH TANGGA'),
(3, 'PELAJAR/MAHASISWA'),
(4, 'PENSIUNAN'),
(5, 'PEGAWAI NEGERI SIPIL (PNS)'),
(6, 'TENTARA NASIONAL INDONESIA (TNI)'),
(7, 'KEPOLISIAN RI (POLRI)'),
(8, 'PERDAGANGAN'),
(9, 'PETANI/PEKEBUN'),
(10, 'PETERNAK'),
(11, 'NELAYAN/PERIKANAN'),
(12, 'INDUSTRI'),
(13, 'KONSTRUKSI'),
(14, 'TRANSPORTASI'),
(15, 'KARYAWAN SWASTA'),
(16, 'KARYAWAN BUMN'),
(17, 'KARYAWAN BUMD'),
(18, 'KARYAWAN HONORER'),
(19, 'BURUH HARIAN LEPAS'),
(20, 'BURUH TANI/PERKEBUNAN'),
(21, 'BURUH NELAYAN/PERIKANAN'),
(22, 'BURUH PETERNAKAN'),
(23, 'PEMBANTU RUMAH TANGGA'),
(24, 'TUKANG CUKUR'),
(25, 'TUKANG LISTRIK'),
(26, 'TUKANG BATU'),
(27, 'TUKANG KAYU'),
(28, 'TUKANG SOL SEPATU'),
(29, 'TUKANG LAS/PANDAI BESI'),
(30, 'TUKANG JAHIT'),
(31, 'TUKANG GIGI'),
(32, 'PENATA RIAS'),
(33, 'PENATA BUSANA'),
(34, 'PENATA RAMBUT'),
(35, 'MEKANIK'),
(36, 'SENIMAN'),
(37, 'TABIB'),
(38, 'PARAJI'),
(39, 'PERANCANG BUSANA'),
(40, 'PENTERJEMAH'),
(41, 'IMAM MASJID'),
(42, 'PENDETA'),
(43, 'PASTOR'),
(44, 'WARTAWAN'),
(45, 'USTADZ/MUBALIGH'),
(46, 'JURU MASAK'),
(47, 'PROMOTOR ACARA'),
(48, 'ANGGOTA DPR-RI'),
(49, 'ANGGOTA DPD'),
(50, 'ANGGOTA BPK'),
(51, 'PRESIDEN'),
(52, 'WAKIL PRESIDEN'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI'),
(54, 'ANGGOTA KABINET KEMENTERIAN'),
(55, 'DUTA BESAR'),
(56, 'GUBERNUR'),
(57, 'WAKIL GUBERNUR'),
(58, 'BUPATI'),
(59, 'WAKIL BUPATI'),
(60, 'WALIKOTA'),
(61, 'WAKIL WALIKOTA'),
(62, 'ANGGOTA DPRD PROVINSI'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA'),
(64, 'DOSEN'),
(65, 'GURU'),
(66, 'PILOT'),
(67, 'PENGACARA'),
(68, 'NOTARIS'),
(69, 'ARSITEK'),
(70, 'AKUNTAN'),
(71, 'KONSULTAN'),
(72, 'DOKTER'),
(73, 'BIDAN'),
(74, 'PERAWAT'),
(75, 'APOTEKER'),
(76, 'PSIKIATER/PSIKOLOG'),
(77, 'PENYIAR TELEVISI'),
(78, 'PENYIAR RADIO'),
(79, 'PELAUT'),
(80, 'PENELITI'),
(81, 'SOPIR'),
(82, 'PIALANG'),
(83, 'PARANORMAL'),
(84, 'PEDAGANG'),
(85, 'PERANGKAT DESA'),
(86, 'KEPALA DESA'),
(87, 'BIARAWATI'),
(88, 'WIRASWASTA'),
(89, 'LAINNYA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id_pendaftar` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nik` varchar(17) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `tgl_buat` date NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `no_wa` varchar(20) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftar`
--

INSERT INTO `pendaftar` (`id_pendaftar`, `id`, `nik`, `pin`, `tgl_buat`, `status`, `no_wa`, `kddesa`) VALUES
(2, 12, '3332323232', '56c01c28b95d60bdd2630224d2895b8b', '2022-02-08', 1, '6289516697976', 1),
(11, 18, '2222222222221245', '7e2ecbca6d8968d4d4cd54f8ac628cf2', '2022-02-27', 1, '6289646619071', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` tinyint(3) NOT NULL,
  `nama_pendidikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `nama_pendidikan`) VALUES
(1, 'BELUM MASUK TK/KELOMPOK BERMAIN'),
(2, 'SEDANG TK/KELOMPOK BERMAIN'),
(3, 'TIDAK PERNAH SEKOLAH'),
(4, 'SEDANG SD/SEDERAJAT'),
(5, 'TIDAK TAMAT SD/SEDERAJAT'),
(6, 'SEDANG SLTP/SEDERAJAT'),
(7, 'SEDANG SLTA/SEDERAJAT'),
(8, 'SEDANG  D-1/SEDERAJAT'),
(9, 'SEDANG D-2/SEDERAJAT'),
(10, 'SEDANG D-3/SEDERAJAT'),
(11, 'SEDANG  S-1/SEDERAJAT'),
(12, 'SEDANG S-2/SEDERAJAT'),
(13, 'SEDANG S-3/SEDERAJAT'),
(14, 'SEDANG SLB A/SEDERAJAT'),
(15, 'SEDANG SLB B/SEDERAJAT'),
(16, 'SEDANG SLB C/SEDERAJAT'),
(17, 'TIDAK DAPAT MEMBACA DAN MENULIS HURUF LATIN/ARAB'),
(18, 'TIDAK SEDANG SEKOLAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan_kk`
--

CREATE TABLE `pendidikan_kk` (
  `id_pendidikan_kk` int(10) UNSIGNED NOT NULL,
  `nama_pendidikan_kk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pendidikan_kk`
--

INSERT INTO `pendidikan_kk` (`id_pendidikan_kk`, `nama_pendidikan_kk`) VALUES
(1, 'TIDAK / BELUM SEKOLAH'),
(2, 'BELUM TAMAT SD/SEDERAJAT'),
(3, 'TAMAT SD / SEDERAJAT'),
(4, 'SLTP/SEDERAJAT'),
(5, 'SLTA / SEDERAJAT'),
(6, 'DIPLOMA I / II'),
(7, 'AKADEMI/ DIPLOMA III/S. MUDA'),
(8, 'DIPLOMA IV/ STRATA I'),
(9, 'STRATA II'),
(10, 'STRATA III');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(17) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `kk_level` tinyint(2) NOT NULL DEFAULT 0,
  `sex` tinyint(4) UNSIGNED DEFAULT NULL,
  `tempatlahir` varchar(100) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `id_dusun` int(11) NOT NULL,
  `id_rw` int(11) NOT NULL,
  `id_rt` int(11) NOT NULL,
  `agama_id` int(1) DEFAULT NULL,
  `id_pendidikan_kk` int(1) DEFAULT NULL,
  `pendidikan_sedang_id` int(1) DEFAULT NULL,
  `id_pekerjaan` int(1) DEFAULT NULL,
  `status_kawin` tinyint(4) DEFAULT NULL,
  `warganegara_id` tinyint(4) NOT NULL DEFAULT 1,
  `dokumen_pasport` varchar(45) DEFAULT NULL,
  `dokumen_kitas` varchar(45) DEFAULT NULL,
  `ayah_nik` varchar(16) DEFAULT NULL,
  `ibu_nik` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `id_golongan` int(11) DEFAULT NULL,
  `id_cluster` int(11) NOT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `alamat_sebelumnya` varchar(200) DEFAULT NULL,
  `alamat_sekarang` varchar(200) DEFAULT NULL,
  `status_dasar` tinyint(4) NOT NULL DEFAULT 1,
  `hamil` int(1) DEFAULT NULL,
  `cacat_id` int(11) DEFAULT NULL,
  `sakit_menahun_id` int(11) DEFAULT NULL,
  `akta_lahir` varchar(40) DEFAULT NULL,
  `akta_perkawinan` varchar(40) DEFAULT NULL,
  `tanggalperkawinan` date DEFAULT NULL,
  `akta_perceraian` varchar(40) DEFAULT NULL,
  `tanggalperceraian` date DEFAULT NULL,
  `cara_kb_id` tinyint(2) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `tanggal_akhir_paspor` date DEFAULT NULL,
  `ktp_el` tinyint(4) DEFAULT NULL,
  `status_rekam` tinyint(4) DEFAULT NULL,
  `waktu_lahir` varchar(5) DEFAULT NULL,
  `tempat_dilahirkan` tinyint(2) DEFAULT NULL,
  `jenis_kelahiran` tinyint(2) DEFAULT NULL,
  `kelahiran_anak_ke` tinyint(2) DEFAULT NULL,
  `penolong_kelahiran` tinyint(2) DEFAULT NULL,
  `berat_lahir` smallint(6) DEFAULT NULL,
  `panjang_lahir` varchar(10) DEFAULT NULL,
  `tag_id_card` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`id`, `nama`, `nik`, `id_kk`, `kk_level`, `sex`, `tempatlahir`, `tanggallahir`, `id_dusun`, `id_rw`, `id_rt`, `agama_id`, `id_pendidikan_kk`, `pendidikan_sedang_id`, `id_pekerjaan`, `status_kawin`, `warganegara_id`, `dokumen_pasport`, `dokumen_kitas`, `ayah_nik`, `ibu_nik`, `nama_ayah`, `nama_ibu`, `foto`, `id_golongan`, `id_cluster`, `status`, `alamat_sebelumnya`, `alamat_sekarang`, `status_dasar`, `hamil`, `cacat_id`, `sakit_menahun_id`, `akta_lahir`, `akta_perkawinan`, `tanggalperkawinan`, `akta_perceraian`, `tanggalperceraian`, `cara_kb_id`, `telepon`, `tanggal_akhir_paspor`, `ktp_el`, `status_rekam`, `waktu_lahir`, `tempat_dilahirkan`, `jenis_kelahiran`, `kelahiran_anak_ke`, `penolong_kelahiran`, `berat_lahir`, `panjang_lahir`, `tag_id_card`, `created_at`, `created_by`, `updated_at`, `updated_by`, `email`, `kddesa`) VALUES
(12, 'Supriyanto', '3332323232', 1, 2, 1, 'c', '2013-02-14', 18, 13, 6, 1, 1, 15, 16, 1, 1, '', '', '1', '2', 'A', 'B', '', 2, 0, 1, '', '', 1, 0, 3, 7, '1222222222222221', '', '0000-00-00', '', '0000-00-00', NULL, '', '0000-00-00', NULL, NULL, '16:15', 1, 1, 1, 1, 0, '', NULL, '2022-02-06 09:11:45', 0, '2022-02-06 09:11:45', NULL, '', 1),
(13, 'mimii', '2222222222222222', 2, 1, 2, 'sds', '2004-02-09', 18, 13, 7, 2, 1, 16, 11, 2, 1, '', '', '', '', '', '', '', 9, 0, 1, '', '', 1, 0, 5, 8, '', '', '0000-00-00', '', '0000-00-00', NULL, '02254544545', '0000-00-00', NULL, NULL, '16:15', 3, 2, 3, 2, 0, '', NULL, '2022-02-06 09:13:18', 0, '2022-02-06 09:13:18', NULL, '', 1),
(14, 'mana', '1234567891234567', 1, 1, 2, 'sds', '2004-02-09', 18, 13, 7, 2, 1, 16, 11, 2, 1, '', '', '', '', '', '', '', 9, 0, 1, '', '', 1, 0, 5, 8, '', '', '0000-00-00', '', '0000-00-00', NULL, '02254544545', '0000-00-00', NULL, NULL, '16:15', 3, 2, 3, 2, 0, '', NULL, '2022-02-06 09:13:18', 0, '2022-02-06 09:13:18', NULL, '', 1),
(16, 'asdsadasdas', '2222222222221245', 1, 1, 1, 'Suemdnag', '1994-02-08', 18, 13, 7, 1, 2, 3, 2, 1, 1, '', '', '1222222222222222', '1333333333333333', '', '', '', 1, 0, 1, '', 'Sumedang Utara', 1, 0, 1, 1, '', '', '0000-00-00', '', '0000-00-00', NULL, '', '0000-00-00', NULL, NULL, '15:30', 0, 0, 0, 0, 0, '', NULL, '2022-02-16 08:18:50', 0, '2022-02-16 08:18:50', NULL, '', 1),
(17, 'Rohmat Rohim', '3211234124143422', 0, 1, 1, 'Sumedang', '1992-12-02', 18, 13, 6, 1, 6, 18, 12, 2, 1, '', '', '4213625234234242', '4121232342356153', 'Rudi', 'Sartini', '', 4, 0, 1, '', 'Jalanin aja dulu', 1, 1, 7, 1, '514322', '45343243', '2021-12-12', '', '0000-00-00', NULL, '0584735344123', '0000-00-00', NULL, NULL, '20:00', 3, 1, 1, 1, 2700, '30', NULL, '2022-03-01 12:54:49', 0, '2022-03-01 12:54:49', NULL, '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerima`
--

CREATE TABLE `penerima` (
  `id_penerima` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `no_peserta` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan_surat`
--

CREATE TABLE `permohonan_surat` (
  `id_permohonan` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created` date NOT NULL DEFAULT current_timestamp(),
  `updated` date NOT NULL DEFAULT current_timestamp(),
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `permohonan_surat`
--

INSERT INTO `permohonan_surat` (`id_permohonan`, `id`, `id_surat`, `status`, `created`, `updated`, `kddesa`) VALUES
(1, 12, 41, 3, '2022-03-01', '2022-03-01', 1),
(2, 12, 41, 4, '2022-03-01', '2022-03-01', 1),
(3, 12, 41, 3, '2022-03-01', '2022-03-01', 1),
(4, 12, 1, 3, '2023-10-17', '2023-10-17', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesankeluar`
--

CREATE TABLE `pesankeluar` (
  `id_pesankeluar` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `tgl_kirim` date NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanmasuk`
--

CREATE TABLE `pesanmasuk` (
  `id_pesan` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `status` int(11) NOT NULL,
  `tgl_kirim` date NOT NULL DEFAULT current_timestamp(),
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rt`
--

CREATE TABLE `rt` (
  `id_rt` int(11) NOT NULL,
  `rt` varchar(20) NOT NULL,
  `id_dusun` int(11) NOT NULL,
  `id_rw` int(11) NOT NULL,
  `kepala_rt` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rt`
--

INSERT INTO `rt` (`id_rt`, `rt`, `id_dusun`, `id_rw`, `kepala_rt`, `kddesa`) VALUES
(6, '01', 18, 13, '', 1),
(7, '02', 18, 13, '', 1),
(8, '03', 18, 13, '', 1),
(9, 'sa', 18, 20, 'mimii', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rw`
--

CREATE TABLE `rw` (
  `id_rw` int(11) NOT NULL,
  `rw` varchar(20) NOT NULL,
  `id_dusun` int(11) NOT NULL,
  `kepala_rw` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rw`
--

INSERT INTO `rw` (`id_rw`, `rw`, `id_dusun`, `kepala_rw`, `kddesa`) VALUES
(13, '001', 18, 'mimii', 1),
(14, '002', 18, 'Rohmat Rohim', 1),
(15, '003', 18, '', 0),
(16, '004', 18, '', 0),
(20, '0021', 20, 'mimii', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_syarat`
--

CREATE TABLE `setting_syarat` (
  `id_setting` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id_syarat` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_syarat`
--

INSERT INTO `setting_syarat` (`id_setting`, `id_surat`, `id_syarat`, `kddesa`) VALUES
(109, 2, 10, 1),
(110, 2, 11, 1),
(111, 2, 12, 1),
(123, 5, 1, 1),
(124, 5, 2, 1),
(129, 6, 1, 1),
(130, 6, 2, 1),
(131, 10, 1, 1),
(132, 10, 2, 1),
(133, 10, 3, 1),
(134, 13, 1, 1),
(135, 13, 2, 1),
(136, 11, 1, 1),
(137, 11, 2, 1),
(138, 12, 3, 1),
(139, 9, 1, 1),
(140, 15, 1, 1),
(141, 17, 1, 1),
(156, 43, 1, 1),
(158, 8, 1, 1),
(159, 14, 1, 1),
(160, 42, 1, 1),
(163, 7, 1, 1),
(164, 24, 2, 1),
(165, 24, 3, 1),
(166, 21, 1, 1),
(169, 3, 1, 1),
(170, 23, 1, 1),
(171, 18, 1, 1),
(172, 26, 1, 1),
(173, 41, 1, 1),
(174, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_web`
--

CREATE TABLE `setting_web` (
  `id_setting` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting_web`
--

INSERT INTO `setting_web` (`id_setting`, `nama`, `file`, `kddesa`) VALUES
(12, 'Kepala Desa', 'YS5qcGVn', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `tipe` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `judul`, `file`, `tipe`, `kddesa`) VALUES
(5, 'Kami mengutamakan kesejahteran masyarakat Desa Tugu', '1.png', 1, 1),
(6, 'Dengan mengusung desa harmonis, kami siap menjadi yang terdepan.', 'banner-video.mp4', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `wa` varchar(255) NOT NULL,
  `ig` varchar(255) NOT NULL,
  `yt` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `telegram` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sosmed`
--

INSERT INTO `sosmed` (`id`, `fb`, `wa`, `ig`, `yt`, `twitter`, `telegram`, `kddesa`) VALUES
(7, 'www.facebook.com/', '6289534103221', 'www.instagram.com/pemdestugumlarak', 'www.youtube.com/', 'www.twitter.com/', 'www.telegram.com/', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_akta`
--

CREATE TABLE `surat_akta` (
  `id_akta` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `tempatlahiranak` varchar(100) NOT NULL,
  `tgl_anak` date NOT NULL,
  `hari_lahir` varchar(255) NOT NULL,
  `alamat_anak` varchar(255) NOT NULL,
  `nama_ayahanak` varchar(100) NOT NULL,
  `nama_ibuanak` varchar(100) NOT NULL,
  `alamat_orangtua` text NOT NULL,
  `jkanak` varchar(20) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_bedaidentitas`
--

CREATE TABLE `surat_bedaidentitas` (
  `id_bedaidentitas` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `identitas` varchar(255) NOT NULL,
  `no_bedaidentitas` varchar(255) NOT NULL,
  `nama_bedaidentitas` varchar(255) NOT NULL,
  `tempat_bedaidentitas` varchar(255) NOT NULL,
  `tgl_bedaidentitas` date NOT NULL,
  `jk_bedaidentitas` varchar(20) NOT NULL,
  `alamat_bedaidentitas` text NOT NULL,
  `agama_bedaidentitas` varchar(20) NOT NULL,
  `pekerjaan_bedaidentitas` varchar(255) NOT NULL,
  `keterangan_bedaidentitas` text NOT NULL,
  `perbedaan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_belumakta`
--

CREATE TABLE `surat_belumakta` (
  `id_belumakta` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_bio`
--

CREATE TABLE `surat_bio` (
  `id_bio` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_cerai`
--

CREATE TABLE `surat_cerai` (
  `id_cerai` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `tglcerai` date DEFAULT NULL,
  `sebab` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_domisili_usaha`
--

CREATE TABLE `surat_domisili_usaha` (
  `id_domisili` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_usaha` varchar(255) NOT NULL,
  `alamat_usaha` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_domisili_usaha`
--

INSERT INTO `surat_domisili_usaha` (`id_domisili`, `id_permohonan`, `id_surat`, `id`, `nama_usaha`, `alamat_usaha`, `kddesa`) VALUES
(2, 1, 15, 12, 'Usaha Ikan Lele', 'S', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_format`
--

CREATE TABLE `surat_format` (
  `id_format_surat` int(11) NOT NULL,
  `nama_surat` varchar(100) NOT NULL,
  `url_surat` varchar(100) NOT NULL,
  `url_kades` varchar(50) NOT NULL,
  `url_admin` varchar(255) NOT NULL,
  `url_buatsurat` varchar(255) NOT NULL,
  `url_download` varchar(255) NOT NULL,
  `kode_surat` varchar(10) DEFAULT NULL,
  `lampiran` varchar(100) DEFAULT NULL,
  `kunci` tinyint(1) NOT NULL DEFAULT 0,
  `favorit` tinyint(1) NOT NULL DEFAULT 0,
  `jenis` tinyint(2) NOT NULL DEFAULT 2,
  `mandiri` tinyint(1) DEFAULT 0,
  `masa_berlaku` int(3) DEFAULT 1,
  `satuan_masa_berlaku` varchar(15) DEFAULT 'M',
  `qr_code` tinyint(1) NOT NULL DEFAULT 0,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `surat_format`
--

INSERT INTO `surat_format` (`id_format_surat`, `nama_surat`, `url_surat`, `url_kades`, `url_admin`, `url_buatsurat`, `url_download`, `kode_surat`, `lampiran`, `kunci`, `favorit`, `jenis`, `mandiri`, `masa_berlaku`, `satuan_masa_berlaku`, `qr_code`, `kddesa`) VALUES
(1, 'Keterangan Pengantar', 'surat_ket_pengantar', 'view_surat_ket_pengantar', 'admin_surat_ket_pengantar', 'buat_surat_ket_pengantar', 'download_surat_ket_pengantar', 'S-011', NULL, 0, 1, 1, 1, 1, 'DAY', 0, 1),
(3, 'Biodata Penduduk', 'surat_bio_penduduk', 'view_surat_bio_penduduk', 'admin_surat_bio_penduduk', 'buat_surat_bio_penduduk', 'download_surat_bio_penduduk', 'S-03', NULL, 0, 0, 1, 1, 1, 'WEEK', 0, 1),
(4, 'Keterangan Pindah Penduduk', 'surat_ket_pindah_penduduk', 'view_surat_ket_pindah_penduduk', 'admin_surat_ket_pindah_penduduk', '', 'download_surat_ket_pindah_penduduk', 'S-04', 'f-1.08.php,f-1.25.php', 0, 1, 1, 1, 1, 'MONTH', 0, 1),
(5, 'Keterangan Jual Beli', 'surat_ket_jual_beli', 'view_surat_ket_jual_beli', 'admin_surat_ket_jual_beli', 'buat_surat_ket_jual_beli', 'download_surat_ket_jual_beli', 'S-05', NULL, 0, 0, 1, 1, 1, 'MONTH', 0, 1),
(6, 'Pengantar Surat Keterangan Catatan Kepolisian', 'surat_ket_catatan_kriminal', 'view_surat_ket_catatan_kriminal', 'admin_surat_ket_catatan_kriminal', 'buat_surat_ket_catatan_kriminal', 'download_surat_ket_catatan_kriminal', 'S-06', NULL, 0, 1, 1, 1, 1, 'WEEK', 0, 1),
(7, 'Keterangan KTP dalam Proses', 'surat_ket_ktp_dalam_proses', 'view_surat_ket_ktp_dalam_proses', 'admin_surat_ket_ktp_dalam_proses', 'buat_surat_ket_ktp_dalam_proses', 'download_surat_ket_ktp_dalam_proses', 'S-08', NULL, 0, 0, 1, 0, 1, 'DAY', 0, 1),
(8, 'Keterangan Beda Identitas', 'surat_ket_beda_nama', 'view_surat_ket_beda_nama', 'admin_surat_ket_beda_nama', 'buat_surat_ket_beda_nama', 'download_surat_ket_beda_nama', 'S-09', NULL, 0, 0, 1, 1, 1, 'DAY', 0, 1),
(9, 'Keterangan Bepergian / Jalan', 'surat_jalan', 'view_surat_jalan', 'admin_surat_jalan', 'buat_surat_jalan', 'download_surat_jalan', 'S-10', NULL, 0, 1, 1, 1, 1, 'WEEK', 0, 1),
(10, 'Keterangan Kurang Mampu', 'surat_ket_kurang_mampu', 'view_surat_ket_kurang_mampu', 'admin_surat_ket_kurang_mampu', 'buat_surat_ket_kurang_mampu', 'download_surat_ket_kurang_mampu', 'S-11', NULL, 0, 1, 1, 1, 1, 'MONTH', 0, 1),
(11, 'Pengantar Izin Keramaian', 'surat_izin_keramaian', 'view_surat_izin_keramaian', 'admin_surat_izin_keramaian', 'buat_surat_izin_keramaian', 'download_surat_izin_keramaian', 'S-12', NULL, 0, 1, 1, 1, 1, 'MONTH', 0, 1),
(12, 'Pengantar Laporan Kehilangan', 'surat_ket_kehilangan', 'view_surat_ket_kehilangan', 'admin_surat_ket_kehilangan', 'buat_surat_ket_kehilangan', 'download_surat_ket_kehilangan', 'S-13', NULL, 0, 0, 1, 1, 1, 'WEEK', 0, 1),
(13, 'Keterangan Usaha', 'surat_ket_usaha', 'view_surat_ket_usaha', 'admin_surat_ket_usaha', 'buat_surat_ket_usaha', 'download_surat_ket_usaha', 'S-14', NULL, 0, 0, 1, 1, 1, 'MONTH', 0, 1),
(14, 'Keterangan JAMKESOS', 'surat_ket_jamkesos', 'view_surat_ket_jamkesos', 'admin_surat_ket_jamkesos', 'buat_surat_ket_jamkesos', 'download_surat_ket_jamkesos', 'S-15', NULL, 0, 0, 1, 1, 1, 'MONTH', 0, 1),
(15, 'Keterangan Domisili Usaha', 'surat_ket_domisili_usaha', 'view_surat_ket_domisili_usaha', 'admin_surat_ket_domisili_usaha', 'buat_surat_ket_domisili_usaha', 'download_surat_ket_domisili_usaha', 'S-16', NULL, 0, 1, 1, 1, 1, 'WEEK', 0, 1),
(16, 'Keterangan Kelahiran', 'surat_ket_kelahiran', 'view_surat_ket_kelahiran', 'admin_surat_ket_kelahiran', '', 'download_surat_ket_kelahiran', 'S-17', 'f-kelahiran.php', 0, 1, 1, 0, 1, 'MONTH', 0, 1),
(17, 'Permohonan Akta Lahir', 'surat_permohonan_akta', 'view_surat_permohonan_akta', 'admin_surat_permohonan_akta', 'buat_surat_permohonan_akta', 'download_surat_permohonan_akta', 'S-18', NULL, 0, 1, 1, 1, 1, 'DAY', 0, 1),
(18, 'Pernyataan Belum Memiliki Akta Lahir', 'surat_pernyataan_akta', 'view_surat_pernyataan_akta', 'admin_surat_pernyataan_akta', 'buat_surat_pernyataan_akta', 'download_surat_pernyataan_akta', 'S-19', NULL, 0, 1, 1, 1, 1, 'MONTH', 0, 1),
(20, 'Keterangan Kematian', 'surat_ket_kematian', 'view_surat_ket_kematian', 'admin_surat_ket_kematian', '', 'download_surat_ket_kematian', 'S-21', 'f-2.29.php', 0, 1, 1, 0, 1, 'MONTH', 0, 1),
(21, 'Keterangan Lahir Mati', 'surat_ket_lahir_mati', 'view_surat_ket_lahir_mati', 'admin_surat_ket_lahir_mati', 'buat_surat_ket_lahir_mati', 'download_surat_ket_lahir_mati', 'S-22', NULL, 0, 0, 1, 1, 1, 'DAY', 0, 1),
(22, 'Keterangan Untuk Nikah (N-1 s/d N-7)', 'surat_ket_nikah', 'view_surat_ket_nikah', 'admin_surat_ket_nikah', '', 'download_surat_ket_nikah', 'S-23', NULL, 0, 0, 1, 0, 1, 'MONTH', 0, 1),
(23, 'Keterangan Pergi Kawin', 'surat_ket_pergi_kawin', 'view_surat_ket_pergi_kawin', 'admin_surat_ket_pergi_kawin', 'buat_surat_ket_pergi_kawin', 'download_surat_ket_pergi_kawin', 'S-30', NULL, 0, 0, 1, 1, 1, 'MONTH', 0, 1),
(24, 'Keterangan Wali Hakim', 'surat_ket_wali_hakim', 'view_surat_ket_wali_hakim', 'admin_surat_ket_wali_hakim', 'buat_surat_ket_wali_hakim', 'download_surat_ket_wali_hakim', 'S-32', NULL, 0, 0, 1, 0, 1, 'MONTH', 0, 1),
(26, 'Keterangan Cerai', 'surat_ket_cerai', 'view_surat_ket_cerai', 'admin_surat_ket_cerai', 'buat_surat_ket_cerai', 'download_surat_ket_cerai', 'S-34', NULL, 0, 0, 1, 1, 1, 'MONTH', 0, 1),
(27, 'Keterangan Pengantar Rujuk/Cerai', 'surat_ket_rujuk_cerai', '0', '', '', '', 'S-35', NULL, 0, 0, 1, 0, 1, 'MONTH', 0, 1),
(28, 'Permohonan Kartu Keluarga', 'surat_permohonan_kartu_keluarga', '0', '', '', '', 'S-36', 'f-1.15.php,f-1.01.php', 0, 1, 1, 0, 1, 'MONTH', 0, 1),
(30, 'Keterangan Beda Identitas KIS', 'surat_ket_beda_identitas_kis', '0', '', '', '', 'S-38', NULL, 0, 0, 1, 0, 1, 'MONTH', 0, 1),
(33, 'Permohonan Perubahan Kartu Keluarga', 'surat_permohonan_perubahan_kartu_keluarga', '0', '', '', '', 'S-41', 'f-1.16.php,f-1.01.php', 0, 1, 1, 0, 1, 'MONTH', 0, 1),
(35, 'Keterangan Domisili', 'surat_ket_domisili', '0', '', '', '', 'S-41', NULL, 0, 0, 1, 0, 1, 'MONTH', 0, 1),
(36, 'Keterangan Penghasilan Orangtua', 'surat_ket_penghasilan_orangtua', '0', '', '', '', 'S-42', NULL, 0, 0, 1, 0, 1, 'MONTH', 0, 1),
(40, 'Perintah Perjalanan Dinas', 'surat_perintah_perjalanan_dinas', '0', '', '', '', 'S-46', NULL, 0, 0, 1, 0, 1, 'MONTH', 0, 1),
(41, 'Kuasa', 'surat_kuasa', 'view_surat_kuasa', 'admin_surat_kuasa', 'buat_surat_kuasa', 'download_surat_kuasa', 'S-47', NULL, 0, 0, 1, 1, 1, 'MONTH', 0, 1),
(42, 'Keterangan Kepemilikan Kendaraan', 'surat_ket_kepemilikan_kendaraan', 'view_surat_ket_kepemilikan_kendaraan', 'admin_surat_ket_kepemilikan_kendaraan', 'buat_surat_ket_kepemilikan_kendaraan', '', 'S-48', NULL, 0, 0, 1, 1, 1, 'MONTH', 0, 1),
(43, 'Keterangan Kepemilikan Tanah', 'surat_ket_kepemilikan_tanah', 'view_surat_ket_kepemilikan_tanah', 'admin_surat_ket_kepemilikan_tanah', 'buat_surat_ket_kepemilikan_tanah', 'download_surat_ket_kepemilikan_tanah', 'S-49', NULL, 0, 1, 1, 1, 1, 'DAY', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_izin_keramaian`
--

CREATE TABLE `surat_izin_keramaian` (
  `id_keramaian` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `jenis_acara` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_jalan`
--

CREATE TABLE `surat_jalan` (
  `id_jalan` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_jamkesos`
--

CREATE TABLE `surat_jamkesos` (
  `id_jamkesos` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `no_jamkesos` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_jualbeli`
--

CREATE TABLE `surat_jualbeli` (
  `id_jualbeli` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `rincian_barang` text NOT NULL,
  `nik_pembeli` varchar(20) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `tgllahirpembeli` date NOT NULL,
  `tempatlahirpembeli` varchar(100) NOT NULL,
  `jkpembeli` varchar(20) NOT NULL,
  `alamat_pembeli` text NOT NULL,
  `pekerjaan_pembeli` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_kawin`
--

CREATE TABLE `surat_kawin` (
  `id_kawin` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_kehilangan`
--

CREATE TABLE `surat_kehilangan` (
  `id_kehilangan` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `rincian_barang` varchar(255) NOT NULL,
  `kejadian` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_kriminal`
--

CREATE TABLE `surat_kriminal` (
  `id_kriminal` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_ktp`
--

CREATE TABLE `surat_ktp` (
  `id_kriminal` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_kuasa`
--

CREATE TABLE `surat_kuasa` (
  `id_kuasa` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `nik_penerima` varchar(255) NOT NULL,
  `jk_penerima` varchar(20) NOT NULL,
  `tempatlahirpenerima` varchar(255) NOT NULL,
  `tgllahirpenerima` date NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `desa_penerima` varchar(255) NOT NULL,
  `kec_penerima` varchar(255) NOT NULL,
  `kab_penerima` varchar(255) NOT NULL,
  `prov_penerima` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_kuasa`
--

INSERT INTO `surat_kuasa` (`id_kuasa`, `id_permohonan`, `id_surat`, `id`, `nama_penerima`, `nik_penerima`, `jk_penerima`, `tempatlahirpenerima`, `tgllahirpenerima`, `id_pekerjaan`, `alamat_penerima`, `desa_penerima`, `kec_penerima`, `kab_penerima`, `prov_penerima`, `keperluan`, `kddesa`) VALUES
(1, 1, 41, 12, 'ASWd', '12', 'Laki - Laki', '', '0000-00-00', 17, '12', '12', '21', '12', '1', '1212', 1),
(2, 2, 41, 12, 'asd', 'asd', 'Laki - Laki', 'asd', '2022-03-09', 17, 'jalan cikandung ', 'cikandung', 'cimalkan', 'sumedgang', 'Jawa brat', 'pemberian kuasa untuk proyej pembangunan', 1),
(3, 3, 41, 12, 'A', '4555555555555555', 'Laki - Laki', 'A', '2022-03-29', 18, 'as', 'as', 'asas', 'as', 'as', 'as', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_lahirmati`
--

CREATE TABLE `surat_lahirmati` (
  `id_lahirmati` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tglmati` date NOT NULL,
  `tempatmeninggal` varchar(255) NOT NULL,
  `ibu` varchar(255) NOT NULL,
  `lamakandungan` varchar(20) NOT NULL,
  `hubungan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_milikkendaraan`
--

CREATE TABLE `surat_milikkendaraan` (
  `id_milikkendaraan` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `tahun_penerbitan` text NOT NULL,
  `warna` varchar(20) NOT NULL,
  `nopol` varchar(255) NOT NULL,
  `no_mesin` varchar(255) NOT NULL,
  `no_rangka` varchar(100) NOT NULL,
  `no_bpkb` varchar(20) NOT NULL,
  `bahan_bakar` varchar(255) NOT NULL,
  `silinder` varchar(255) NOT NULL,
  `atas_milik` varchar(255) NOT NULL,
  `keperluan` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_miliktanah`
--

CREATE TABLE `surat_miliktanah` (
  `id_miliktanah` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `jenis_tanah` varchar(255) NOT NULL,
  `luas_tanah` varchar(20) NOT NULL,
  `bukti_kepemilikan` varchar(100) NOT NULL,
  `no_buktikepemilikan` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `asal_kepemilikan_tanah` varchar(255) NOT NULL,
  `bukti_pendukung` varchar(255) NOT NULL,
  `batas_utara` varchar(255) NOT NULL,
  `batas_barat` varchar(255) NOT NULL,
  `batas_timur` varchar(255) NOT NULL,
  `batas_selatan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_pengantar`
--

CREATE TABLE `surat_pengantar` (
  `id_pengantar` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_pengantar`
--

INSERT INTO `surat_pengantar` (`id_pengantar`, `id_permohonan`, `id_surat`, `id`, `keperluan`, `keterangan`, `kddesa`) VALUES
(1, 4, 1, 12, 'mm', 'mm', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_tidakmampu`
--

CREATE TABLE `surat_tidakmampu` (
  `id_tidakmampu` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_usaha`
--

CREATE TABLE `surat_usaha` (
  `id_usaha` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_usaha` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_walihakim`
--

CREATE TABLE `surat_walihakim` (
  `id_walihakim` int(11) NOT NULL,
  `id_permohonan` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `syarat_surat`
--

CREATE TABLE `syarat_surat` (
  `ref_syarat_id` int(1) UNSIGNED NOT NULL,
  `ref_syarat_nama` varchar(255) NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `syarat_surat`
--

INSERT INTO `syarat_surat` (`ref_syarat_id`, `ref_syarat_nama`, `kddesa`) VALUES
(1, 'Surat Pengantar RT/RW a', 1),
(2, 'Fotokopi KK', 1),
(3, 'Fotokopi KTP', 1),
(4, 'Fotokopi Surat Nikah/Akta Nikah/Kutipan Akta Perkawinan', 1),
(5, 'Fotokopi Akta Kelahiran/Surat Kelahiran bagi keluarga yang mempunyai anak', 1),
(6, 'Surat Pindah Datang dari tempat asal', 1),
(7, 'Surat Keterangan Kematian dari Rumah Sakit, Rumah Bersalin Puskesmas, atau visum Dokter', 1),
(8, 'Surat Keterangan Cerai', 1),
(9, 'Fotokopi Ijasah Terakhir', 1),
(10, 'SK. PNS/KARIP/SK. TNI – POLRI', 1),
(11, 'Surat Keterangan Kematian dari Kepala Desa/Kelurahan', 1),
(12, 'Surat imigrasi / STMD (Surat Tanda Melapor Diri)', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `text_berjalan`
--

CREATE TABLE `text_berjalan` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `text_berjalan`
--

INSERT INTO `text_berjalan` (`id`, `isi`, `kddesa`) VALUES
(6, 'Selamat Datang di Website Resmi Desa Tugu Kecamatan Mlarak Kabupaten Ponorogo', 1),
(7, 'KKN TEMATIK Kelompok Tugu Universitas Muhammadiyah Ponorogo', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tweb_kades`
--

CREATE TABLE `tweb_kades` (
  `id_kades` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `status` int(11) NOT NULL,
  `kddesa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tweb_kades`
--

INSERT INTO `tweb_kades` (`id_kades`, `username`, `password`, `nama`, `nik`, `status`, `kddesa`) VALUES
(3, 'Kades', '24c9e15e52afc47c225b757e7bee1f9d', 'Supriyanto', '2', 1, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tweb_users`
--

CREATE TABLE `tweb_users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `status` int(11) NOT NULL,
  `kddesa` varchar(20) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tweb_users`
--

INSERT INTO `tweb_users` (`id_users`, `username`, `password`, `nama`, `nik`, `status`, `kddesa`, `last_login`, `role`) VALUES
(1, 'admin', '24c9e15e52afc47c225b757e7bee1f9d', 'Admin Desa 1', '3', 1, '1', '2023-10-21 09:48:55', 'admin'),
(2, 'user2', '7e58d63b60197ceb55a1c487989a3720', 'Admin Desa ', '3222212121212', 1, '2', NULL, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umkm`
--

CREATE TABLE `umkm` (
  `id_umkm` int(11) NOT NULL,
  `nama_umkm` varchar(255) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `kddesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `umkm`
--

INSERT INTO `umkm` (`id_umkm`, `nama_umkm`, `kode`, `id_kat`, `id`, `deskripsi`, `kddesa`) VALUES
(4, 'Kolorin.id (Kolor Reog)', '001', 2, 12, 'Pusat produksi kolor reog di ponorogo yang sudah memiliki pasar di pasar lokal maupun mancanegara', 1),
(5, 'Cakue dan Roti Goreng', '002', 2, 12, 'Rumah pusat produksi cakuwe yang memiliki beberapa cabang di ponorogo', 1),
(6, 'Pupuk Omes', '003', 2, 14, '', 1),
(7, 'Tempe Genjos', '004', 2, 14, 'Tempe gembus adalah makanan yang dibuat dari ampas tahu atau sisa pembuatan tahu.', 1),
(8, 'Tempe Kedelai', '005', 2, 14, 'UMKM Tempe merupakan usaha pembuatan tempe dengan tujuan untuk mendapatkan keuntungan yang lebih tinggi dibandingkan hanya dengan menjual kedelai saja.', 1),
(9, 'Tempe Keripik', '006', 2, 13, 'Di desa Pangkal ada banyak UMKM yang menjual keripik tempe. Salah satunya adalah milik Ibu Wiji Utami. Beliau sudah berjualan keripik tempe sejak tahun 1980-an.', 1),
(10, 'Batu Bata', '007', 2, 13, 'Usaha pembuatan batu bata merupakan salah satu usaha industri kecil.Menurut UU No. 3 Tahun 2014, industri adalah salah satu bentuk kegiatan ekonomi yang mengolah bahan baku dan memanfaatkan sumber daya lain sehingga menghasilkan barang yang mempunyai nilai tambah atau manfaat lebih tinggi.', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`agama_id`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `allsetting`
--
ALTER TABLE `allsetting`
  ADD PRIMARY KEY (`kddesa`);

--
-- Indeks untuk tabel `anggotaumkm`
--
ALTER TABLE `anggotaumkm`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_umkm` (`id_umkm`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `aparat`
--
ALTER TABLE `aparat`
  ADD PRIMARY KEY (`pamong_id`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bantuan`
--
ALTER TABLE `bantuan`
  ADD PRIMARY KEY (`id_program`);

--
-- Indeks untuk tabel `budaya`
--
ALTER TABLE `budaya`
  ADD PRIMARY KEY (`id_budaya`);

--
-- Indeks untuk tabel `covid_pantau`
--
ALTER TABLE `covid_pantau`
  ADD PRIMARY KEY (`id_pantau`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `covid_pemudik`
--
ALTER TABLE `covid_pemudik`
  ADD PRIMARY KEY (`id_terdata`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indeks untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`id_dusun`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_album` (`id_album`);

--
-- Indeks untuk tabel `golongan_darah`
--
ALTER TABLE `golongan_darah`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indeks untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id_hubungan`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kat_album`
--
ALTER TABLE `kat_album`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeks untuk tabel `kat_artikel`
--
ALTER TABLE `kat_artikel`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeks untuk tabel `kat_budaya`
--
ALTER TABLE `kat_budaya`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeks untuk tabel `kat_umkm`
--
ALTER TABLE `kat_umkm`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeks untuk tabel `kk`
--
ALTER TABLE `kk`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indeks untuk tabel `log_penduduk`
--
ALTER TABLE `log_penduduk`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `log_surat`
--
ALTER TABLE `log_surat`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indeks untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id_pendaftar`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indeks untuk tabel `pendidikan_kk`
--
ALTER TABLE `pendidikan_kk`
  ADD PRIMARY KEY (`id_pendidikan_kk`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`id_penerima`),
  ADD KEY `id` (`id`),
  ADD KEY `id_program` (`id_program`);

--
-- Indeks untuk tabel `permohonan_surat`
--
ALTER TABLE `permohonan_surat`
  ADD PRIMARY KEY (`id_permohonan`);

--
-- Indeks untuk tabel `pesankeluar`
--
ALTER TABLE `pesankeluar`
  ADD PRIMARY KEY (`id_pesankeluar`);

--
-- Indeks untuk tabel `pesanmasuk`
--
ALTER TABLE `pesanmasuk`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `rt`
--
ALTER TABLE `rt`
  ADD PRIMARY KEY (`id_rt`),
  ADD KEY `id_dusun` (`id_dusun`,`id_rw`),
  ADD KEY `id_rw` (`id_rw`);

--
-- Indeks untuk tabel `rw`
--
ALTER TABLE `rw`
  ADD PRIMARY KEY (`id_rw`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indeks untuk tabel `setting_syarat`
--
ALTER TABLE `setting_syarat`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `setting_web`
--
ALTER TABLE `setting_web`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_akta`
--
ALTER TABLE `surat_akta`
  ADD PRIMARY KEY (`id_akta`);

--
-- Indeks untuk tabel `surat_bedaidentitas`
--
ALTER TABLE `surat_bedaidentitas`
  ADD PRIMARY KEY (`id_bedaidentitas`);

--
-- Indeks untuk tabel `surat_belumakta`
--
ALTER TABLE `surat_belumakta`
  ADD PRIMARY KEY (`id_belumakta`);

--
-- Indeks untuk tabel `surat_bio`
--
ALTER TABLE `surat_bio`
  ADD PRIMARY KEY (`id_bio`);

--
-- Indeks untuk tabel `surat_cerai`
--
ALTER TABLE `surat_cerai`
  ADD PRIMARY KEY (`id_cerai`);

--
-- Indeks untuk tabel `surat_domisili_usaha`
--
ALTER TABLE `surat_domisili_usaha`
  ADD PRIMARY KEY (`id_domisili`);

--
-- Indeks untuk tabel `surat_format`
--
ALTER TABLE `surat_format`
  ADD PRIMARY KEY (`id_format_surat`),
  ADD UNIQUE KEY `url_surat` (`url_surat`);

--
-- Indeks untuk tabel `surat_izin_keramaian`
--
ALTER TABLE `surat_izin_keramaian`
  ADD PRIMARY KEY (`id_keramaian`);

--
-- Indeks untuk tabel `surat_jalan`
--
ALTER TABLE `surat_jalan`
  ADD PRIMARY KEY (`id_jalan`);

--
-- Indeks untuk tabel `surat_jamkesos`
--
ALTER TABLE `surat_jamkesos`
  ADD PRIMARY KEY (`id_jamkesos`);

--
-- Indeks untuk tabel `surat_jualbeli`
--
ALTER TABLE `surat_jualbeli`
  ADD PRIMARY KEY (`id_jualbeli`);

--
-- Indeks untuk tabel `surat_kawin`
--
ALTER TABLE `surat_kawin`
  ADD PRIMARY KEY (`id_kawin`);

--
-- Indeks untuk tabel `surat_kehilangan`
--
ALTER TABLE `surat_kehilangan`
  ADD PRIMARY KEY (`id_kehilangan`);

--
-- Indeks untuk tabel `surat_kriminal`
--
ALTER TABLE `surat_kriminal`
  ADD PRIMARY KEY (`id_kriminal`);

--
-- Indeks untuk tabel `surat_ktp`
--
ALTER TABLE `surat_ktp`
  ADD PRIMARY KEY (`id_kriminal`);

--
-- Indeks untuk tabel `surat_kuasa`
--
ALTER TABLE `surat_kuasa`
  ADD PRIMARY KEY (`id_kuasa`);

--
-- Indeks untuk tabel `surat_lahirmati`
--
ALTER TABLE `surat_lahirmati`
  ADD PRIMARY KEY (`id_lahirmati`);

--
-- Indeks untuk tabel `surat_milikkendaraan`
--
ALTER TABLE `surat_milikkendaraan`
  ADD PRIMARY KEY (`id_milikkendaraan`);

--
-- Indeks untuk tabel `surat_miliktanah`
--
ALTER TABLE `surat_miliktanah`
  ADD PRIMARY KEY (`id_miliktanah`);

--
-- Indeks untuk tabel `surat_pengantar`
--
ALTER TABLE `surat_pengantar`
  ADD PRIMARY KEY (`id_pengantar`);

--
-- Indeks untuk tabel `surat_tidakmampu`
--
ALTER TABLE `surat_tidakmampu`
  ADD PRIMARY KEY (`id_tidakmampu`);

--
-- Indeks untuk tabel `surat_usaha`
--
ALTER TABLE `surat_usaha`
  ADD PRIMARY KEY (`id_usaha`);

--
-- Indeks untuk tabel `surat_walihakim`
--
ALTER TABLE `surat_walihakim`
  ADD PRIMARY KEY (`id_walihakim`);

--
-- Indeks untuk tabel `syarat_surat`
--
ALTER TABLE `syarat_surat`
  ADD PRIMARY KEY (`ref_syarat_id`);

--
-- Indeks untuk tabel `text_berjalan`
--
ALTER TABLE `text_berjalan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tweb_kades`
--
ALTER TABLE `tweb_kades`
  ADD PRIMARY KEY (`id_kades`);

--
-- Indeks untuk tabel `tweb_users`
--
ALTER TABLE `tweb_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_umkm`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `agama_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `allsetting`
--
ALTER TABLE `allsetting`
  MODIFY `kddesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `anggotaumkm`
--
ALTER TABLE `anggotaumkm`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `aparat`
--
ALTER TABLE `aparat`
  MODIFY `pamong_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `bantuan`
--
ALTER TABLE `bantuan`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `budaya`
--
ALTER TABLE `budaya`
  MODIFY `id_budaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `covid_pantau`
--
ALTER TABLE `covid_pantau`
  MODIFY `id_pantau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `covid_pemudik`
--
ALTER TABLE `covid_pemudik`
  MODIFY `id_terdata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `dusun`
--
ALTER TABLE `dusun`
  MODIFY `id_dusun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `golongan_darah`
--
ALTER TABLE `golongan_darah`
  MODIFY `id_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kat_album`
--
ALTER TABLE `kat_album`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kat_artikel`
--
ALTER TABLE `kat_artikel`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kat_budaya`
--
ALTER TABLE `kat_budaya`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kat_umkm`
--
ALTER TABLE `kat_umkm`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `log_penduduk`
--
ALTER TABLE `log_penduduk`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `log_surat`
--
ALTER TABLE `log_surat`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pendidikan_kk`
--
ALTER TABLE `pendidikan_kk`
  MODIFY `id_pendidikan_kk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `penerima`
--
ALTER TABLE `penerima`
  MODIFY `id_penerima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pesankeluar`
--
ALTER TABLE `pesankeluar`
  MODIFY `id_pesankeluar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanmasuk`
--
ALTER TABLE `pesanmasuk`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `rt`
--
ALTER TABLE `rt`
  MODIFY `id_rt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rw`
--
ALTER TABLE `rw`
  MODIFY `id_rw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `setting_syarat`
--
ALTER TABLE `setting_syarat`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT untuk tabel `setting_web`
--
ALTER TABLE `setting_web`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `surat_akta`
--
ALTER TABLE `surat_akta`
  MODIFY `id_akta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_bedaidentitas`
--
ALTER TABLE `surat_bedaidentitas`
  MODIFY `id_bedaidentitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_belumakta`
--
ALTER TABLE `surat_belumakta`
  MODIFY `id_belumakta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_bio`
--
ALTER TABLE `surat_bio`
  MODIFY `id_bio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_cerai`
--
ALTER TABLE `surat_cerai`
  MODIFY `id_cerai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_domisili_usaha`
--
ALTER TABLE `surat_domisili_usaha`
  MODIFY `id_domisili` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_format`
--
ALTER TABLE `surat_format`
  MODIFY `id_format_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT untuk tabel `surat_izin_keramaian`
--
ALTER TABLE `surat_izin_keramaian`
  MODIFY `id_keramaian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_jalan`
--
ALTER TABLE `surat_jalan`
  MODIFY `id_jalan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_jamkesos`
--
ALTER TABLE `surat_jamkesos`
  MODIFY `id_jamkesos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_jualbeli`
--
ALTER TABLE `surat_jualbeli`
  MODIFY `id_jualbeli` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_kawin`
--
ALTER TABLE `surat_kawin`
  MODIFY `id_kawin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_kehilangan`
--
ALTER TABLE `surat_kehilangan`
  MODIFY `id_kehilangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_kriminal`
--
ALTER TABLE `surat_kriminal`
  MODIFY `id_kriminal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_ktp`
--
ALTER TABLE `surat_ktp`
  MODIFY `id_kriminal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_kuasa`
--
ALTER TABLE `surat_kuasa`
  MODIFY `id_kuasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_lahirmati`
--
ALTER TABLE `surat_lahirmati`
  MODIFY `id_lahirmati` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_milikkendaraan`
--
ALTER TABLE `surat_milikkendaraan`
  MODIFY `id_milikkendaraan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_miliktanah`
--
ALTER TABLE `surat_miliktanah`
  MODIFY `id_miliktanah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_pengantar`
--
ALTER TABLE `surat_pengantar`
  MODIFY `id_pengantar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat_tidakmampu`
--
ALTER TABLE `surat_tidakmampu`
  MODIFY `id_tidakmampu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_usaha`
--
ALTER TABLE `surat_usaha`
  MODIFY `id_usaha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_walihakim`
--
ALTER TABLE `surat_walihakim`
  MODIFY `id_walihakim` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `syarat_surat`
--
ALTER TABLE `syarat_surat`
  MODIFY `ref_syarat_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `text_berjalan`
--
ALTER TABLE `text_berjalan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tweb_kades`
--
ALTER TABLE `tweb_kades`
  MODIFY `id_kades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tweb_users`
--
ALTER TABLE `tweb_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggotaumkm`
--
ALTER TABLE `anggotaumkm`
  ADD CONSTRAINT `anggotaumkm_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `umkm` (`id_umkm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anggotaumkm_ibfk_2` FOREIGN KEY (`id`) REFERENCES `penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `covid_pantau`
--
ALTER TABLE `covid_pantau`
  ADD CONSTRAINT `covid_pantau_ibfk_1` FOREIGN KEY (`id`) REFERENCES `penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `covid_pemudik`
--
ALTER TABLE `covid_pemudik`
  ADD CONSTRAINT `covid_pemudik_ibfk_1` FOREIGN KEY (`id`) REFERENCES `penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);

--
-- Ketidakleluasaan untuk tabel `penerima`
--
ALTER TABLE `penerima`
  ADD CONSTRAINT `penerima_ibfk_1` FOREIGN KEY (`id`) REFERENCES `penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rt`
--
ALTER TABLE `rt`
  ADD CONSTRAINT `rt_ibfk_2` FOREIGN KEY (`id_dusun`) REFERENCES `dusun` (`id_dusun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rt_ibfk_3` FOREIGN KEY (`id_rw`) REFERENCES `rw` (`id_rw`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rw`
--
ALTER TABLE `rw`
  ADD CONSTRAINT `rw_ibfk_2` FOREIGN KEY (`id_dusun`) REFERENCES `dusun` (`id_dusun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `umkm`
--
ALTER TABLE `umkm`
  ADD CONSTRAINT `umkm_ibfk_1` FOREIGN KEY (`id`) REFERENCES `penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
