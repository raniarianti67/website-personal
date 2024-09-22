-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2024 pada 14.12
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_gema`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `DES_ID` varchar(25) NOT NULL,
  `KEC_ID` varchar(25) NOT NULL,
  `DES_NAMA` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`DES_ID`, `KEC_ID`, `DES_NAMA`) VALUES
('DES-0001', 'KEC-0001', 'Sukamulia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dusun`
--

CREATE TABLE `dusun` (
  `DUS_ID` varchar(25) NOT NULL,
  `DES_ID` varchar(25) NOT NULL,
  `DUS_NAMA` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dusun`
--

INSERT INTO `dusun` (`DUS_ID`, `DES_ID`, `DUS_NAMA`) VALUES
('ALA-0001', 'DES-0001', 'Dusun Gubuk Kebon Timuk'),
('ALA-0002', 'DES-0001', 'Dusun Gubuk Bat '),
('ALA-0003', 'DES-0001', 'Dusun Gubuk Lauk '),
('ALA-0004', 'DES-0001', 'Dusun Gubuk Timuk'),
('ALA-0005', 'DES-0001', 'Dusun Balungadang Dasan M');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `ID_FOTO` int(11) NOT NULL,
  `ID_KELUARGA` varchar(35) NOT NULL,
  `FILE_FOTO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`ID_FOTO`, `ID_KELUARGA`, `FILE_FOTO`) VALUES
(2, '123', 'error.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `KEC_ID` varchar(25) NOT NULL,
  `KEC_NAMA` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`KEC_ID`, `KEC_NAMA`) VALUES
('KEC-0001', 'Sukamulia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarga`
--

CREATE TABLE `keluarga` (
  `ID_KELUARGA` varchar(25) NOT NULL,
  `KEC_ID` varchar(25) NOT NULL,
  `DUS_ID` varchar(25) NOT NULL,
  `DES_ID` varchar(25) NOT NULL,
  `NAMA_KEPALAKELUARGA` varchar(25) DEFAULT NULL,
  `NOMOR_KARTUKELUARGA` varchar(25) NOT NULL,
  `NOMOR_TELPON` varchar(25) NOT NULL,
  `JUMLAH_ANGGOTAKELUARGA` int(11) DEFAULT NULL,
  `JUMLAH_KELUARGA` int(11) DEFAULT NULL,
  `NAMA_LENGKAP` varchar(25) NOT NULL,
  `NIK` varchar(25) NOT NULL,
  `JENIS_KELAMIN` varchar(25) NOT NULL,
  `TEMPAT_LAHIR` varchar(25) NOT NULL,
  `TANGGAL_LAHIR` date NOT NULL DEFAULT current_timestamp(),
  `AGAMA` enum('Islam','Hindu','Budha','Kristen','Konghucu','Katolik') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `keluarga`
--

INSERT INTO `keluarga` (`ID_KELUARGA`, `KEC_ID`, `DUS_ID`, `DES_ID`, `NAMA_KEPALAKELUARGA`, `NOMOR_KARTUKELUARGA`, `NOMOR_TELPON`, `JUMLAH_ANGGOTAKELUARGA`, `JUMLAH_KELUARGA`, `NAMA_LENGKAP`, `NIK`, `JENIS_KELAMIN`, `TEMPAT_LAHIR`, `TANGGAL_LAHIR`, `AGAMA`) VALUES
('123', 'KEC-0001', 'ALA-0001', 'DES-0001', 'Adi', '532456789900000', '0878987654433', 5, 1, 'Adi Maroli', '123456776457', 'Laki Laki', 'selong', '2022-05-02', 'Islam'),
('123123121312312', 'KEC-0001', 'ALA-0001', 'DES-0001', 'asdasd', 'wqeqweqw', '1213123', 1, 2, 'sadasd', '12231231', 'Laki Laki', 'asdasd', '2024-08-01', 'Islam'),
('12312312312', 'KEC-0001', 'ALA-0001', 'DES-0001', 'wdqwqw', '21312312', '1231231', 1, 1, 'asdasdas', '212313', 'Laki Laki', 'sdasd', '2024-08-01', 'Islam'),
('1234', 'KEC-0001', 'ALA-0001', 'DES-0001', 'Dani', '123456544678', '878567457534', 2, 4, 'FATIMA AZZAHRA', '54343365476', 'Perempuan', 'selong', '2024-07-17', 'Islam'),
('12345', 'KEC-0001', 'ALA-0001', 'DES-0001', 'asdaf', '3433232t2', '15315322', 3, 1, 'vabdsbdss', '1231231', 'Laki Laki', 'dscsdcs', '2024-08-06', 'Islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `ID_KRITERIA` varchar(25) NOT NULL,
  `NAMA_KRITERIA` varchar(100) DEFAULT NULL,
  `RANK_KRITERIA` int(11) DEFAULT NULL,
  `BOBOT_KRITERIA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`ID_KRITERIA`, `NAMA_KRITERIA`, `RANK_KRITERIA`, `BOBOT_KRITERIA`) VALUES
('KRI-0001', 'status kesejahteraan (desil) ', 1, 0.10495),
('KRI-0002', 'Status kepemilikan bangunan tempat tinggal', 2, 0.0805594),
('KRI-0003', 'Status kepemilikan lahan tempat tinggal', 3, 0.0683642),
('KRI-0004', 'Jenis lantai terluas', 4, 0.0602341),
('KRI-0005', 'Jenis dinding terluas', 5, 0.0541366),
('KRI-0006', 'Jenis atap terluas', 6, 0.0492585),
('KRI-0007', 'Kualitas dinding terluas', 7, 0.0451935),
('KRI-0008', 'Kualitas atap terluas', 8, 0.0417092),
('KRI-0009', 'Sumber air minum', 9, 0.0386604),
('KRI-0010', 'Cara memperoleh air minum', 10, 0.0359504),
('KRI-0011', 'Penggunaan fasilitas buang air besar', 11, 0.0335113),
('KRI-0012', 'Jenis kloset', 12, 0.031294),
('KRI-0013', 'Tempat pembuangan akhir tinja', 13, 0.0292615),
('KRI-0014', 'Sumber penerangan utama', 14, 0.0273854),
('KRI-0015', 'Daya listrik terpasang(PLN)', 15, 0.0256432),
('KRI-0016', 'Bahan bakar untuk memasak', 16, 0.0240172),
('KRI-0017', 'Kepemilikan tabung gas 5.5kg atau lebih', 17, 0.0224928),
('KRI-0018', 'Kepemilikan sambungan telepon(PSTN)', 18, 0.0210581),
('KRI-0019', 'Kepemilikan komputer/laptop', 19, 0.0197031),
('KRI-0020', 'Kepemilikan sepeda', 20, 0.0184194),
('KRI-0021', 'Kepemilikan sepeda motor', 21, 0.0171998),
('KRI-0022', 'Kepemilikan mobil', 22, 0.0160384),
('KRI-0023', 'Kepemilikan perahu', 23, 0.0149298),
('KRI-0024', 'Kepemilikan motor tempel', 24, 0.0138693),
('KRI-0025', 'Kepemilikan peprahu motor', 25, 0.0128531),
('KRI-0026', 'Kepemilikan kapal', 26, 0.0118774),
('KRI-0027', 'Kepemilikan lemari es/kulkas', 27, 0.0109394),
('KRI-0028', 'Kepemilikan AC(penyejuk udara)', 28, 0.010036),
('KRI-0029', 'Kepemilikan pemanas air(water heater)', 29, 0.00916493),
('KRI-0030', 'Kepemilikan televisi ', 30, 0.00832389),
('KRI-0031', 'Kepemilikan emas/perhiasan/tabungan senilai 10 gra', 31, 0.00751088),
('KRI-0032', 'Kepemilikan lahan', 32, 0.0067241),
('KRI-0033', 'Kepemilikan rumah di lokasi lain', 33, 0.0059619),
('KRI-0034', 'Ada anggota rumah tangga yang memiliki usaha sendi', 34, 0.00522281),
('KRI-0035', 'Memiliki kks/kps', 35, 0.00450545),
('KRI-0036', 'Peserta program pkh', 36, 0.00380858),
('KRI-0037', 'Peserta program raskin', 37, 0.00313108),
('KRI-0038', 'Peserta program kur', 38, 0.00247188),
('KRI-0039', 'Pendidikan Terakhir', 39, 0.00183003),
('KRI-0040', 'Pekerjan', 40, 0.00120464),
('KRI-0041', 'Umur', 41, 0.000594884);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pejabat`
--

CREATE TABLE `pejabat` (
  `ID_PEJABAT` bigint(20) NOT NULL,
  `NAMA_PEJABAT` varchar(25) NOT NULL,
  `NIP` varchar(35) NOT NULL,
  `JABATAN` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pejabat`
--

INSERT INTO `pejabat` (`ID_PEJABAT`, `NAMA_PEJABAT`, `NIP`, `JABATAN`) VALUES
(1, 'H.SLAMET', '21312312', 'Kepala Desa'),
(2, 'ISMAIL, S.Pd.I', '1231231231231', 'Sekertaris Desa'),
(3, 'MULIADI, S.AP', '2131231212', 'Kaur Desa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `ID_PENILAIAN` varchar(25) NOT NULL,
  `ID_SUBKRITERIA` varchar(25) NOT NULL,
  `ID_KELUARGA` varchar(25) NOT NULL,
  `ID_KRITERIA` varchar(25) NOT NULL,
  `KEPALA_KELUARGA` varchar(20) DEFAULT NULL,
  `KECAMATAN` varchar(20) DEFAULT NULL,
  `DESA` varchar(20) DEFAULT NULL,
  `DUSUN` varchar(20) DEFAULT NULL,
  `BOBOT_KRI` float DEFAULT NULL,
  `BOBOT_SUB` float DEFAULT NULL,
  `JUMLAH` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`ID_PENILAIAN`, `ID_SUBKRITERIA`, `ID_KELUARGA`, `ID_KRITERIA`, `KEPALA_KELUARGA`, `KECAMATAN`, `DESA`, `DUSUN`, `BOBOT_KRI`, `BOBOT_SUB`, `JUMLAH`) VALUES
('PEN-00000001', 'SUB-0069', '123', 'KRI-0013', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0293833, 0.158333, 0.00465235),
('PEN-00000002', 'SUB-0074', '123', 'KRI-0014', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0274602, 0.277778, 0.00762784),
('PEN-00000003', 'SUB-0054', '123', 'KRI-0009', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0390171, 0.0145202, 0.000566536),
('PEN-00000004', 'SUB-0001', '123', 'KRI-0001', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.106964, 0.611111, 0.0653669),
('PEN-00000005', 'SUB-0011', '123', 'KRI-0003', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0694636, 0.145833, 0.0101301),
('PEN-00000006', 'SUB-0005', '123', 'KRI-0002', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0819636, 0.256667, 0.0210374),
('PEN-00000007', 'SUB-0131', '123', 'KRI-0037', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0025996, 0.75, 0.0019497),
('PEN-00000008', 'SUB-0129', '123', 'KRI-0036', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00329404, 0.75, 0.00247053),
('PEN-00000009', 'SUB-0134', '123', 'KRI-0038', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00192392, 0.25, 0.00048098),
('PEN-00000010', 'SUB-0061', '123', 'KRI-0011', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0337394, 0.145833, 0.00492032),
('PEN-00000011', 'SUB-0135', '123', 'KRI-0039', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00126603, 0.408333, 0.000516962),
('PEN-00000012', 'SUB-0141', '123', 'KRI-0040', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.000625, 0.339732, 0.000212332),
('PEN-00000013', 'SUB-0127', '123', 'KRI-0035', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00400833, 0.75, 0.00300625),
('PEN-00000014', 'SUB-0041', '123', 'KRI-0007', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0457136, 0.25, 0.0114284),
('PEN-00000015', 'SUB-0043', '123', 'KRI-0008', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0421421, 0.25, 0.0105355),
('PEN-00000016', 'SUB-0118', '123', 'KRI-0030', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00792223, 0.25, 0.00198056),
('PEN-00000017', 'SUB-0091', '123', 'KRI-0017', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0224454, 0.75, 0.0168341),
('PEN-00000018', 'SUB-0100', '123', 'KRI-0021', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0170201, 0.25, 0.00425503),
('PEN-00000019', 'SUB-0097', '123', 'KRI-0020', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0182701, 0.75, 0.0137026),
('PEN-00000020', 'SUB-0094', '123', 'KRI-0018', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0209748, 0.25, 0.0052437),
('PEN-00000021', 'SUB-0124', '123', 'KRI-0033', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0055012, 0.25, 0.0013753),
('PEN-00000022', 'SUB-0104', '123', 'KRI-0023', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0146932, 0.25, 0.0036733),
('PEN-00000023', 'SUB-0108', '123', 'KRI-0025', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0125646, 0.25, 0.00314115),
('PEN-00000024', 'SUB-0116', '123', 'KRI-0029', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0087843, 0.25, 0.00219607),
('PEN-00000025', 'SUB-0106', '123', 'KRI-0024', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0136063, 0.25, 0.00340157),
('PEN-00000026', 'SUB-0102', '123', 'KRI-0022', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0158296, 0.25, 0.0039574),
('PEN-00000027', 'SUB-0112', '123', 'KRI-0027', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0106031, 0.25, 0.00265078),
('PEN-00000028', 'SUB-0122', '123', 'KRI-0032', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00628245, 0.25, 0.00157061),
('PEN-00000029', 'SUB-0096', '123', 'KRI-0019', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0195859, 0.25, 0.00489648),
('PEN-00000030', 'SUB-0110', '123', 'KRI-0026', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0115646, 0.25, 0.00289115),
('PEN-00000031', 'SUB-0120', '123', 'KRI-0031', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0070889, 0.25, 0.00177223),
('PEN-00000032', 'SUB-0114', '123', 'KRI-0028', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00967716, 0.25, 0.00241929),
('PEN-00000033', 'SUB-0021', '123', 'KRI-0004', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0611302, 0.0211111, 0.00129053),
('PEN-00000034', 'SUB-0066', '123', 'KRI-0012', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0314666, 0.0625, 0.00196666),
('PEN-00000035', 'SUB-0026', '123', 'KRI-0005', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0548802, 0.108503, 0.00595467),
('PEN-00000036', 'SUB-0035', '123', 'KRI-0006', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0498802, 0.0645635, 0.00322044),
('PEN-00000037', 'SUB-0076', '123', 'KRI-0015', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0256745, 0.408333, 0.0104837),
('PEN-00000038', 'SUB-0058', '123', 'KRI-0010', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0362394, 0.111111, 0.0040266),
('PEN-00000039', 'SUB-0089', '123', 'KRI-0016', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0240079, 0.0262346, 0.000629838),
('PEN-00000040', 'SUB-0126', '123', 'KRI-0034', 'Adi', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00474362, 0.25, 0.0011859),
('PEN-00000041', 'SUB-0071', '1234', 'KRI-0013', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0293833, 0.0611111, 0.00179565),
('PEN-00000042', 'SUB-0073', '1234', 'KRI-0014', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0274602, 0.611111, 0.0167812),
('PEN-00000043', 'SUB-0044', '1234', 'KRI-0009', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0390171, 0.258601, 0.0100899),
('PEN-00000044', 'SUB-0002', '1234', 'KRI-0001', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.106964, 0.277778, 0.0297122),
('PEN-00000045', 'SUB-0009', '1234', 'KRI-0003', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0694636, 0.520833, 0.0361789),
('PEN-00000046', 'SUB-0004', '1234', 'KRI-0002', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0819636, 0.456667, 0.0374301),
('PEN-00000047', 'SUB-0132', '1234', 'KRI-0037', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0025996, 0.25, 0.0006499),
('PEN-00000048', 'SUB-0129', '1234', 'KRI-0036', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00329404, 0.75, 0.00247053),
('PEN-00000049', 'SUB-0133', '1234', 'KRI-0038', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00192392, 0.75, 0.00144294),
('PEN-00000050', 'SUB-0059', '1234', 'KRI-0011', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0337394, 0.520833, 0.0175726),
('PEN-00000051', 'SUB-0139', '1234', 'KRI-0039', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00126603, 0.0611111, 0.0000773685),
('PEN-00000052', 'SUB-0145', '1234', 'KRI-0040', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.000625, 0.0793155, 0.0000495722),
('PEN-00000053', 'SUB-0127', '1234', 'KRI-0035', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00400833, 0.75, 0.00300625),
('PEN-00000054', 'SUB-0040', '1234', 'KRI-0007', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0457136, 0.75, 0.0342852),
('PEN-00000055', 'SUB-0042', '1234', 'KRI-0008', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0421421, 0.75, 0.0316066),
('PEN-00000056', 'SUB-0117', '1234', 'KRI-0030', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00792223, 0.75, 0.00594167),
('PEN-00000057', 'SUB-0091', '1234', 'KRI-0017', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0224454, 0.75, 0.0168341),
('PEN-00000058', 'SUB-0099', '1234', 'KRI-0021', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0170201, 0.75, 0.0127651),
('PEN-00000059', 'SUB-0098', '1234', 'KRI-0020', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0182701, 0.25, 0.00456752),
('PEN-00000060', 'SUB-0093', '1234', 'KRI-0018', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0209748, 0.75, 0.0157311),
('PEN-00000061', 'SUB-0124', '1234', 'KRI-0033', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0055012, 0.25, 0.0013753),
('PEN-00000062', 'SUB-0104', '1234', 'KRI-0023', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0146932, 0.25, 0.0036733),
('PEN-00000063', 'SUB-0108', '1234', 'KRI-0025', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0125646, 0.25, 0.00314115),
('PEN-00000064', 'SUB-0116', '1234', 'KRI-0029', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0087843, 0.25, 0.00219607),
('PEN-00000065', 'SUB-0106', '1234', 'KRI-0024', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0136063, 0.25, 0.00340157),
('PEN-00000066', 'SUB-0102', '1234', 'KRI-0022', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0158296, 0.25, 0.0039574),
('PEN-00000067', 'SUB-0112', '1234', 'KRI-0027', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0106031, 0.25, 0.00265078),
('PEN-00000068', 'SUB-0121', '1234', 'KRI-0032', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00628245, 0.75, 0.00471184),
('PEN-00000069', 'SUB-0096', '1234', 'KRI-0019', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0195859, 0.25, 0.00489648),
('PEN-00000070', 'SUB-0110', '1234', 'KRI-0026', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0115646, 0.25, 0.00289115),
('PEN-00000071', 'SUB-0120', '1234', 'KRI-0031', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0070889, 0.25, 0.00177223),
('PEN-00000072', 'SUB-0114', '1234', 'KRI-0028', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00967716, 0.25, 0.00241929),
('PEN-00000073', 'SUB-0016', '1234', 'KRI-0004', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0611302, 0.109563, 0.00669761),
('PEN-00000074', 'SUB-0065', '1234', 'KRI-0012', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0314666, 0.145833, 0.00458887),
('PEN-00000075', 'SUB-0023', '1234', 'KRI-0005', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0548802, 0.370408, 0.0203281),
('PEN-00000076', 'SUB-0033', '1234', 'KRI-0006', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0498802, 0.109563, 0.00546502),
('PEN-00000077', 'SUB-0077', '1234', 'KRI-0015', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0256745, 0.241667, 0.00620468),
('PEN-00000078', 'SUB-0057', '1234', 'KRI-0010', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0362394, 0.277778, 0.0100665),
('PEN-00000079', 'SUB-0084', '1234', 'KRI-0016', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0240079, 0.147663, 0.00354508),
('PEN-00000080', 'SUB-0126', '1234', 'KRI-0034', 'Dani', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00474362, 0.25, 0.0011859),
('PEN-00000081', 'SUB-0067', '12345', 'KRI-0013', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0293833, 0.408333, 0.0119982),
('PEN-00000082', 'SUB-0074', '12345', 'KRI-0014', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0274602, 0.277778, 0.00762784),
('PEN-00000083', 'SUB-0054', '12345', 'KRI-0009', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0390171, 0.0145202, 0.000566536),
('PEN-00000084', 'SUB-0001', '12345', 'KRI-0001', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.106964, 0.611111, 0.0653669),
('PEN-00000085', 'SUB-0010', '12345', 'KRI-0003', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0694636, 0.270833, 0.018813),
('PEN-00000086', 'SUB-0005', '12345', 'KRI-0002', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0819636, 0.256667, 0.0210374),
('PEN-00000087', 'SUB-0131', '12345', 'KRI-0037', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0025996, 0.75, 0.0019497),
('PEN-00000088', 'SUB-0129', '12345', 'KRI-0036', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00329404, 0.75, 0.00247053),
('PEN-00000089', 'SUB-0133', '12345', 'KRI-0038', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00192392, 0.75, 0.00144294),
('PEN-00000090', 'SUB-0059', '12345', 'KRI-0011', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0337394, 0.520833, 0.0175726),
('PEN-00000091', 'SUB-0135', '12345', 'KRI-0039', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00126603, 0.408333, 0.000516962),
('PEN-00000092', 'SUB-0142', '12345', 'KRI-0040', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.000625, 0.214732, 0.000134207),
('PEN-00000093', 'SUB-0128', '12345', 'KRI-0035', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00400833, 0.25, 0.00100208),
('PEN-00000094', 'SUB-0040', '12345', 'KRI-0007', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0457136, 0.75, 0.0342852),
('PEN-00000095', 'SUB-0042', '12345', 'KRI-0008', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0421421, 0.75, 0.0316066),
('PEN-00000096', 'SUB-0117', '12345', 'KRI-0030', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00792223, 0.75, 0.00594167),
('PEN-00000097', 'SUB-0091', '12345', 'KRI-0017', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0224454, 0.75, 0.0168341),
('PEN-00000098', 'SUB-0099', '12345', 'KRI-0021', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0170201, 0.75, 0.0127651),
('PEN-00000099', 'SUB-0098', '12345', 'KRI-0020', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0182701, 0.25, 0.00456752),
('PEN-00000100', 'SUB-0093', '12345', 'KRI-0018', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0209748, 0.75, 0.0157311),
('PEN-00000101', 'SUB-0123', '12345', 'KRI-0033', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0055012, 0.75, 0.0041259),
('PEN-00000102', 'SUB-0104', '12345', 'KRI-0023', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0146932, 0.25, 0.0036733),
('PEN-00000103', 'SUB-0108', '12345', 'KRI-0025', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0125646, 0.25, 0.00314115),
('PEN-00000104', 'SUB-0116', '12345', 'KRI-0029', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0087843, 0.25, 0.00219607),
('PEN-00000105', 'SUB-0106', '12345', 'KRI-0024', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0136063, 0.25, 0.00340157),
('PEN-00000106', 'SUB-0102', '12345', 'KRI-0022', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0158296, 0.25, 0.0039574),
('PEN-00000107', 'SUB-0111', '12345', 'KRI-0027', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0106031, 0.75, 0.00795233),
('PEN-00000108', 'SUB-0121', '12345', 'KRI-0032', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00628245, 0.75, 0.00471184),
('PEN-00000109', 'SUB-0095', '12345', 'KRI-0019', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0195859, 0.75, 0.0146894),
('PEN-00000110', 'SUB-0110', '12345', 'KRI-0026', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0115646, 0.25, 0.00289115),
('PEN-00000111', 'SUB-0120', '12345', 'KRI-0031', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0070889, 0.25, 0.00177223),
('PEN-00000112', 'SUB-0114', '12345', 'KRI-0028', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00967716, 0.25, 0.00241929),
('PEN-00000113', 'SUB-0020', '12345', 'KRI-0004', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0611302, 0.0336111, 0.00205465),
('PEN-00000114', 'SUB-0064', '12345', 'KRI-0012', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0314666, 0.270833, 0.00852219),
('PEN-00000115', 'SUB-0026', '12345', 'KRI-0005', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0548802, 0.108503, 0.00595467),
('PEN-00000116', 'SUB-0037', '12345', 'KRI-0006', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0498802, 0.0336111, 0.00167653),
('PEN-00000117', 'SUB-0076', '12345', 'KRI-0015', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0256745, 0.408333, 0.0104837),
('PEN-00000118', 'SUB-0057', '12345', 'KRI-0010', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0362394, 0.277778, 0.0100665),
('PEN-00000119', 'SUB-0089', '12345', 'KRI-0016', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.0240079, 0.0262346, 0.000629838),
('PEN-00000120', 'SUB-0126', '12345', 'KRI-0034', 'asdaf', 'Sukamulia', 'Sukamulia', 'Dusun Gubuk Kebon Ti', 0.00474362, 0.25, 0.0011859);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sktm_kesehatan`
--

CREATE TABLE `sktm_kesehatan` (
  `ID_SKTM` int(50) NOT NULL,
  `ID_KELUARGA` varchar(50) NOT NULL,
  `ID_PEJABAT` varchar(50) NOT NULL,
  `PEKERJAAN` varchar(50) NOT NULL,
  `TGL_SKTM` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sktm_kesehatan`
--

INSERT INTO `sktm_kesehatan` (`ID_SKTM`, `ID_KELUARGA`, `ID_PEJABAT`, `PEKERJAAN`, `TGL_SKTM`) VALUES
(10, '1234', '2', 'wiraswasta', '2024-08-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `ID_SUBKRITERIA` varchar(25) NOT NULL,
  `ID_KRITERIA` varchar(25) NOT NULL,
  `NAMA_SUBKRITERIA` varchar(100) DEFAULT NULL,
  `RANK_SUBKRITERIA` int(11) DEFAULT NULL,
  `BOBOT_SUBKRITERIA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`ID_SUBKRITERIA`, `ID_KRITERIA`, `NAMA_SUBKRITERIA`, `RANK_SUBKRITERIA`, `BOBOT_SUBKRITERIA`) VALUES
('SUB-0001', 'KRI-0001', 'Rumah tangga/individu dengan kondisi kesejahteraan sampai dengan 10% terendah', 1, 0.611111),
('SUB-0002', 'KRI-0001', 'Rumah tangga/individu dengan kondisi kesejahteraan antara 11%-20% terendah', 2, 0.277778),
('SUB-0003', 'KRI-0001', 'Rumah tangga /individu dengan kondisi kesejahteraan antara 21%-30% terendah', 3, 0.111111),
('SUB-0004', 'KRI-0002', 'Milik sendiri', 1, 0.456667),
('SUB-0005', 'KRI-0002', 'Kontrak/sewa', 2, 0.256667),
('SUB-0006', 'KRI-0002', 'Bebas sewa', 3, 0.156667),
('SUB-0007', 'KRI-0002', 'Dinas', 4, 0.09),
('SUB-0008', 'KRI-0002', 'Lainnya', 5, 0.04),
('SUB-0009', 'KRI-0003', 'Milik sendiri', 1, 0.520833),
('SUB-0010', 'KRI-0003', 'Milik orang lain', 2, 0.270833),
('SUB-0011', 'KRI-0003', 'Tanah negara', 3, 0.145833),
('SUB-0012', 'KRI-0003', 'Lainnya', 4, 0.0625),
('SUB-0013', 'KRI-0004', 'Marmer/granit', 1, 0.292897),
('SUB-0014', 'KRI-0004', 'Keramik', 2, 0.192897),
('SUB-0015', 'KRI-0004', 'Paket/vinil/permadani', 3, 0.142897),
('SUB-0016', 'KRI-0004', 'Ubin/tegel/teraso', 4, 0.109563),
('SUB-0017', 'KRI-0004', 'Kayu/papan kualitas tinggi', 5, 0.0845635),
('SUB-0018', 'KRI-0004', 'Semen/bata merah', 6, 0.0645635),
('SUB-0019', 'KRI-0004', 'Bambu', 7, 0.0478968),
('SUB-0020', 'KRI-0004', 'Kayu / papan kualitas rendah', 8, 0.0336111),
('SUB-0021', 'KRI-0004', 'Tanah', 9, 0.0211111),
('SUB-0022', 'KRI-0004', 'Lainnya', 10, 0.01),
('SUB-0023', 'KRI-0005', 'Tembok', 1, 0.370408),
('SUB-0024', 'KRI-0005', 'Plesteran anyaman bambu/kawat', 2, 0.227551),
('SUB-0025', 'KRI-0005', 'Kayu', 3, 0.156122),
('SUB-0026', 'KRI-0005', 'Anyaman bambu', 4, 0.108503),
('SUB-0027', 'KRI-0005', 'Batang kayu', 5, 0.0727891),
('SUB-0028', 'KRI-0005', 'Bambu', 6, 0.0442177),
('SUB-0029', 'KRI-0005', 'Lainnya', 7, 0.0204082),
('SUB-0030', 'KRI-0006', 'Beton/gentengbeton', 1, 0.292897),
('SUB-0031', 'KRI-0006', 'Genteng keramin', 2, 0.192897),
('SUB-0032', 'KRI-0006', 'Genteng metal', 3, 0.142897),
('SUB-0033', 'KRI-0006', 'Genteng tanah liat', 4, 0.109563),
('SUB-0034', 'KRI-0006', 'Asbes', 5, 0.0845635),
('SUB-0035', 'KRI-0006', 'Seng', 6, 0.0645635),
('SUB-0036', 'KRI-0006', 'Sirap', 7, 0.0478968),
('SUB-0037', 'KRI-0006', 'Bambu', 8, 0.0336111),
('SUB-0038', 'KRI-0006', 'Jerami/ijuk/daundaunan/rumbia', 9, 0.0211111),
('SUB-0039', 'KRI-0006', 'Lainnya', 10, 0.01),
('SUB-0040', 'KRI-0007', 'Bagus/kualitas tinggi', 1, 0.75),
('SUB-0041', 'KRI-0007', 'Jelek/kualitas rendah', 2, 0.25),
('SUB-0042', 'KRI-0008', 'Bagus/kualitas tinggi', 1, 0.75),
('SUB-0043', 'KRI-0008', 'Jelek/kualitas rendah', 2, 0.25),
('SUB-0044', 'KRI-0009', 'Air kemasan bermerk', 1, 0.258601),
('SUB-0045', 'KRI-0009', 'Air isiulang', 2, 0.175268),
('SUB-0046', 'KRI-0009', 'Ledeng meteran', 3, 0.133601),
('SUB-0047', 'KRI-0009', 'Ledeng eceran', 4, 0.105823),
('SUB-0048', 'KRI-0009', 'Sumur bor/pompa', 5, 0.0849898),
('SUB-0049', 'KRI-0009', 'Sumur terlindung', 6, 0.0683231),
('SUB-0050', 'KRI-0009', 'Sumur tak terlindung', 7, 0.0544342),
('SUB-0051', 'KRI-0009', 'Mata air terlindungi', 8, 0.0425295),
('SUB-0052', 'KRI-0009', 'Mata air tak terlindungi', 9, 0.0321128),
('SUB-0053', 'KRI-0009', 'Air sungai/danau/ waduk', 10, 0.0228535),
('SUB-0054', 'KRI-0009', 'Air hujan', 11, 0.0145202),
('SUB-0055', 'KRI-0009', 'Lainnya', 12, 0.00694444),
('SUB-0056', 'KRI-0010', 'Membeli eceran', 1, 0.611111),
('SUB-0057', 'KRI-0010', 'Langganan', 2, 0.277778),
('SUB-0058', 'KRI-0010', 'Tidak membeli', 3, 0.111111),
('SUB-0059', 'KRI-0011', 'Sendiri', 1, 0.520833),
('SUB-0060', 'KRI-0011', 'Bersama', 2, 0.270833),
('SUB-0061', 'KRI-0011', 'Umum', 3, 0.145833),
('SUB-0062', 'KRI-0011', 'Tidak ada', 4, 0.0625),
('SUB-0063', 'KRI-0012', 'Leher angsa', 1, 0.520833),
('SUB-0064', 'KRI-0012', 'Plengsengan', 2, 0.270833),
('SUB-0065', 'KRI-0012', 'Cemplung/cubluk', 3, 0.145833),
('SUB-0066', 'KRI-0012', 'Tidak pakai', 4, 0.0625),
('SUB-0067', 'KRI-0013', 'Tangki', 1, 0.408333),
('SUB-0068', 'KRI-0013', 'SPAL', 2, 0.241667),
('SUB-0069', 'KRI-0013', 'Lubang tanah', 3, 0.158333),
('SUB-0070', 'KRI-0013', 'Kolam/sawah/sungai/danau/laut', 4, 0.102778),
('SUB-0071', 'KRI-0013', 'Pantai/tanah lapang/kebun', 5, 0.0611111),
('SUB-0072', 'KRI-0013', 'Lainnya', 6, 0.0277778),
('SUB-0073', 'KRI-0014', 'Listrik PLN', 1, 0.611111),
('SUB-0074', 'KRI-0014', 'Listrik non PLN', 2, 0.277778),
('SUB-0075', 'KRI-0014', 'Bukan listrik', 3, 0.111111),
('SUB-0076', 'KRI-0015', '450 watt', 1, 0.408333),
('SUB-0077', 'KRI-0015', '900 watt', 2, 0.241667),
('SUB-0078', 'KRI-0015', '1300 watt', 3, 0.158333),
('SUB-0079', 'KRI-0015', '2200 watt', 4, 0.102778),
('SUB-0080', 'KRI-0015', '>2200 watt', 5, 0.0611111),
('SUB-0081', 'KRI-0015', 'Tanpa meteran', 6, 0.0277778),
('SUB-0082', 'KRI-0016', 'Listrik', 1, 0.31433),
('SUB-0083', 'KRI-0016', 'Gas>3kg', 2, 0.203219),
('SUB-0084', 'KRI-0016', 'Gas 3 kg', 3, 0.147663),
('SUB-0085', 'KRI-0016', 'Gas kota/biogas', 4, 0.110626),
('SUB-0086', 'KRI-0016', 'Minyak tanah', 5, 0.0828483),
('SUB-0087', 'KRI-0016', 'Briket', 6, 0.0606261),
('SUB-0088', 'KRI-0016', 'Arang', 7, 0.0421076),
('SUB-0089', 'KRI-0016', 'Kayu bakar', 8, 0.0262346),
('SUB-0090', 'KRI-0016', 'Tidak memasak di rumah', 9, 0.0123457),
('SUB-0091', 'KRI-0017', 'Ya', 1, 0.75),
('SUB-0092', 'KRI-0017', 'Tidak', 2, 0.25),
('SUB-0093', 'KRI-0018', 'Ya', 1, 0.75),
('SUB-0094', 'KRI-0018', 'Tidak', 2, 0.25),
('SUB-0095', 'KRI-0019', 'Ya', 1, 0.75),
('SUB-0096', 'KRI-0019', 'Tidak', 2, 0.25),
('SUB-0097', 'KRI-0020', 'Ya', 1, 0.75),
('SUB-0098', 'KRI-0020', 'Tidak', 2, 0.25),
('SUB-0099', 'KRI-0021', 'Ya', 1, 0.75),
('SUB-0100', 'KRI-0021', 'Tidak', 2, 0.25),
('SUB-0101', 'KRI-0022', 'Ya', 1, 0.75),
('SUB-0102', 'KRI-0022', 'Tidak', 2, 0.25),
('SUB-0103', 'KRI-0023', 'Ya', 1, 0.75),
('SUB-0104', 'KRI-0023', 'Tidak', 2, 0.25),
('SUB-0105', 'KRI-0024', 'Ya', 1, 0.75),
('SUB-0106', 'KRI-0024', 'Tidak', 2, 0.25),
('SUB-0107', 'KRI-0025', 'Ya', 1, 0.75),
('SUB-0108', 'KRI-0025', 'Tidak', 2, 0.25),
('SUB-0109', 'KRI-0026', 'Ya', 1, 0.75),
('SUB-0110', 'KRI-0026', 'Tidak', 2, 0.25),
('SUB-0111', 'KRI-0027', 'Ya', 1, 0.75),
('SUB-0112', 'KRI-0027', 'Tidak', 2, 0.25),
('SUB-0113', 'KRI-0028', 'Ya', 1, 0.75),
('SUB-0114', 'KRI-0028', 'Tidak', 2, 0.25),
('SUB-0115', 'KRI-0029', 'Ya', 1, 0.75),
('SUB-0116', 'KRI-0029', 'Tidak', 2, 0.25),
('SUB-0117', 'KRI-0030', 'YA', 1, 0.75),
('SUB-0118', 'KRI-0030', 'Tidak', 2, 0.25),
('SUB-0119', 'KRI-0031', 'Ya', 1, 0.75),
('SUB-0120', 'KRI-0031', 'Tidak', 2, 0.25),
('SUB-0121', 'KRI-0032', 'Ya', 1, 0.75),
('SUB-0122', 'KRI-0032', 'Tidak', 2, 0.25),
('SUB-0123', 'KRI-0033', 'YA', 1, 0.75),
('SUB-0124', 'KRI-0033', 'Tidak', 2, 0.25),
('SUB-0125', 'KRI-0034', 'Ya', 1, 0.75),
('SUB-0126', 'KRI-0034', 'Tidak', 2, 0.25),
('SUB-0127', 'KRI-0035', 'Ya', 1, 0.75),
('SUB-0128', 'KRI-0035', 'Tidak', 2, 0.25),
('SUB-0129', 'KRI-0036', 'Ya', 1, 0.75),
('SUB-0130', 'KRI-0036', 'Tidak', 2, 0.25),
('SUB-0131', 'KRI-0037', 'Ya', 1, 0.75),
('SUB-0132', 'KRI-0037', 'Tidak', 2, 0.25),
('SUB-0133', 'KRI-0038', 'Ya', 1, 0.75),
('SUB-0134', 'KRI-0038', 'Tidak', 2, 0.25),
('SUB-0135', 'KRI-0039', 'Tidak sekolah ', 1, 0.408333),
('SUB-0136', 'KRI-0039', 'Tidak tamat SD', 2, 0.241667),
('SUB-0137', 'KRI-0039', 'Tamat SD ', 3, 0.158333),
('SUB-0138', 'KRI-0039', 'Tamat SMP', 4, 0.102778),
('SUB-0139', 'KRI-0039', 'Tamat SMA ', 5, 0.0611111),
('SUB-0140', 'KRI-0039', 'Pendididkan tinggi (D1,D2,S1)', 6, 0.0277778),
('SUB-0141', 'KRI-0040', 'Tidak bekerja ', 1, 0.339732),
('SUB-0142', 'KRI-0040', 'Petani', 2, 0.214732),
('SUB-0143', 'KRI-0040', 'Buruh', 3, 0.152232),
('SUB-0144', 'KRI-0040', 'Pelajar /mahasiswa ', 4, 0.110565),
('SUB-0145', 'KRI-0040', 'Wiraswasta', 5, 0.0793155),
('SUB-0146', 'KRI-0040', 'Pegawai swasta', 6, 0.0543155),
('SUB-0147', 'KRI-0040', 'Pegawai negeri', 7, 0.0334821),
('SUB-0148', 'KRI-0040', 'Lainnya ', 8, 0.015625);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `USER_NAME` varchar(25) NOT NULL DEFAULT '',
  `PASSWORD` varchar(25) DEFAULT NULL,
  `LEVEL` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`USER_NAME`, `PASSWORD`, `LEVEL`) VALUES
('123', '123', 'User'),
('123123121312312', '123123121312312', 'User'),
('1234', '1234', 'User'),
('aa', 'aa', 'User'),
('admin', 'admin', 'Admin'),
('gar_jhaya@yahoo.com', '123', 'Admin');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_penilaian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_penilaian` (
`ID_KELUARGA` varchar(25)
,`KEPALA_KELUARGA` varchar(20)
,`KEC_ID` varchar(25)
,`DES_ID` varchar(25)
,`DUS_ID` varchar(25)
,`RECORD` bigint(21)
,`TOTAL` double
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_penilaian`
--
DROP TABLE IF EXISTS `v_penilaian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_penilaian`  AS SELECT `m1`.`ID_KELUARGA` AS `ID_KELUARGA`, `m2`.`KEPALA_KELUARGA` AS `KEPALA_KELUARGA`, `m1`.`KEC_ID` AS `KEC_ID`, `m1`.`DES_ID` AS `DES_ID`, `m1`.`DUS_ID` AS `DUS_ID`, count(`m2`.`JUMLAH`) AS `RECORD`, sum(`m2`.`JUMLAH`) AS `TOTAL` FROM (`keluarga` `m1` join `penilaian` `m2`) WHERE `m1`.`ID_KELUARGA` = `m2`.`ID_KELUARGA` GROUP BY `m2`.`ID_KELUARGA``ID_KELUARGA`  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`DES_ID`),
  ADD KEY `FK_RELASI_5` (`KEC_ID`);

--
-- Indeks untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`DUS_ID`),
  ADD KEY `FK_RELASI_6` (`DES_ID`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`ID_FOTO`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`KEC_ID`);

--
-- Indeks untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`ID_KELUARGA`),
  ADD KEY `FK_RELASI_7` (`DES_ID`),
  ADD KEY `FK_RELASI_8` (`KEC_ID`),
  ADD KEY `FK_RELASI_9` (`DUS_ID`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`ID_KRITERIA`);

--
-- Indeks untuk tabel `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`ID_PEJABAT`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`ID_PENILAIAN`),
  ADD KEY `FK_RELASI_2` (`ID_KRITERIA`),
  ADD KEY `FK_RELASI_3` (`ID_SUBKRITERIA`),
  ADD KEY `FK_RELASI_4` (`ID_KELUARGA`);

--
-- Indeks untuk tabel `sktm_kesehatan`
--
ALTER TABLE `sktm_kesehatan`
  ADD PRIMARY KEY (`ID_SKTM`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`ID_SUBKRITERIA`),
  ADD KEY `FK_RELASI_1` (`ID_KRITERIA`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_NAME`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `ID_FOTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sktm_kesehatan`
--
ALTER TABLE `sktm_kesehatan`
  MODIFY `ID_SKTM` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD CONSTRAINT `FK_RELASI_5` FOREIGN KEY (`KEC_ID`) REFERENCES `kecamatan` (`KEC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dusun`
--
ALTER TABLE `dusun`
  ADD CONSTRAINT `FK_RELASI_6` FOREIGN KEY (`DES_ID`) REFERENCES `desa` (`DES_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD CONSTRAINT `FK_RELASI_7` FOREIGN KEY (`DES_ID`) REFERENCES `desa` (`DES_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELASI_8` FOREIGN KEY (`KEC_ID`) REFERENCES `kecamatan` (`KEC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELASI_9` FOREIGN KEY (`DUS_ID`) REFERENCES `dusun` (`DUS_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `FK_RELASI_2` FOREIGN KEY (`ID_KRITERIA`) REFERENCES `kriteria` (`ID_KRITERIA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELASI_3` FOREIGN KEY (`ID_SUBKRITERIA`) REFERENCES `subkriteria` (`ID_SUBKRITERIA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RELASI_4` FOREIGN KEY (`ID_KELUARGA`) REFERENCES `keluarga` (`ID_KELUARGA`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `FK_RELASI_1` FOREIGN KEY (`ID_KRITERIA`) REFERENCES `kriteria` (`ID_KRITERIA`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
