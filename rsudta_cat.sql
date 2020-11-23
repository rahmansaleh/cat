/*
 Navicat Premium Data Transfer

 Source Server         : simrs
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : rsudta_cat

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 23/11/2020 14:06:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_admin
-- ----------------------------
DROP TABLE IF EXISTS `m_admin`;
CREATE TABLE `m_admin`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` enum('admin','guru','siswa') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kon_id` int(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kon_id`(`kon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_admin
-- ----------------------------
INSERT INTO `m_admin` VALUES (1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin', 0);
INSERT INTO `m_admin` VALUES (38, '147147147', '2405ea77f6cf0fab8589cd6a38e0c1fc', 'guru', 12);
INSERT INTO `m_admin` VALUES (39, '123123', '4297f44b13955235245b2497399d7a93', 'guru', 13);
INSERT INTO `m_admin` VALUES (40, 'CPJLPKKBH1231', 'a6756fda971bcd79c54229f847eac377', 'siswa', 16);
INSERT INTO `m_admin` VALUES (41, '555555', '5b1b68a9abf4d2cd155c81a9225fd158', 'guru', 14);
INSERT INTO `m_admin` VALUES (42, 'CPJLPKMN4', '4f0b428ffdacb21e5483a8cfe8c01d32', 'siswa', 39);
INSERT INTO `m_admin` VALUES (43, 'CPJLPKMN3', '4485f1cf4a1d809188e8a6f58e892698', 'siswa', 38);

-- ----------------------------
-- Table structure for m_guru
-- ----------------------------
DROP TABLE IF EXISTS `m_guru`;
CREATE TABLE `m_guru`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_guru
-- ----------------------------
INSERT INTO `m_guru` VALUES (12, '147147147', 'Rahman');
INSERT INTO `m_guru` VALUES (13, '123123', 'Mas Latief');
INSERT INTO `m_guru` VALUES (14, '555555', 'Mas Rahmat');

-- ----------------------------
-- Table structure for m_mapel
-- ----------------------------
DROP TABLE IF EXISTS `m_mapel`;
CREATE TABLE `m_mapel`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_mapel
-- ----------------------------
INSERT INTO `m_mapel` VALUES (5, 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_mapel` VALUES (6, 'Soal PJLP Petugas Keamanan');

-- ----------------------------
-- Table structure for m_siswa
-- ----------------------------
DROP TABLE IF EXISTS `m_siswa`;
CREATE TABLE `m_siswa`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nim` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jurusan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_siswa
-- ----------------------------
INSERT INTO `m_siswa` VALUES (16, 'BPK RHMN', 'CPJLPKKBH1231', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (17, 'Agus', 'CPJLPKBH1', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (18, 'Budi', 'CPJLPKBH2', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (19, 'Candra', 'CPJLPKBH3', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (20, 'Dedi', 'CPJLPKBH4', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (21, 'Eko', 'CPJLPKBH5', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (22, 'Fajar', 'CPJLPKBH6', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (23, 'Galuh', 'CPJLPKBH7', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (24, 'Heri', 'CPJLPKBH8', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (25, 'Indra', 'CPJLPKBH9', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (26, 'Joko', 'CPJLPKBH10', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (27, 'Kukuh', 'CPJLPKBH11', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (28, 'Linda', 'CPJLPKBH12', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (29, 'Michael', 'CPJLPKBH13', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (30, 'Nawang', 'CPJLPKBH14', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (31, 'Opan', 'CPJLPKBH15', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (32, 'Putri', 'CPJLPKBH16', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (33, 'Qisti', 'CPJLPKBH17', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (34, 'Riris', 'CPJLPKBH18', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (35, 'Sita', 'CPJLPKBH19', 'Soal PJLP Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (36, 'Aman', 'CPJLPKMN1', 'Soal PJLP Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (37, 'Amin', 'CPJLPKMN2', 'Soal PJLP Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (38, 'Budi', 'CPJLPKMN3', 'Soal PJLP Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (39, 'Dinda', 'CPJLPKMN4', 'Soal PJLP Petugas Keamanan');

-- ----------------------------
-- Table structure for m_soal
-- ----------------------------
DROP TABLE IF EXISTS `m_soal`;
CREATE TABLE `m_soal`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `bobot` int(2) NOT NULL,
  `file` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tipe_file` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `soal` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `opsi_a` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `opsi_b` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `opsi_c` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `opsi_d` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `opsi_e` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jawaban` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_input` datetime(0) NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `jml_salah` int(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_guru`(`id_guru`) USING BTREE,
  INDEX `id_mapel`(`id_mapel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of m_soal
-- ----------------------------
INSERT INTO `m_soal` VALUES (88, 13, 5, 1, '', '', 'Soal ke 1 - Kebersihan', '#####opsi A.1', '#####opsi B.1', '#####opsi C.1', '#####opsi D.1', '#####opsi E.1', 'A', '2020-11-23 09:14:02', 2, 1);
INSERT INTO `m_soal` VALUES (89, 13, 5, 1, '', '', 'Soal ke 2 - Kebersihan', '#####opsi A.2', '#####opsi B.2', '#####opsi C.2', '#####opsi D.2', '#####opsi E.2', 'B', '2020-11-23 09:14:02', 3, 0);
INSERT INTO `m_soal` VALUES (90, 13, 5, 1, '', '', 'Soal ke 3 - Kebersihan', '#####opsi A.3', '#####opsi B.3', '#####opsi C.3', '#####opsi D.3', '#####opsi E.3', 'E', '2020-11-23 09:14:02', 0, 3);
INSERT INTO `m_soal` VALUES (91, 13, 5, 1, '', '', 'Soal ke 4 - Kebersihan', '#####opsi A.4', '#####opsi B.4', '#####opsi C.4', '#####opsi D.4', '#####opsi E.4', 'D', '2020-11-23 09:14:02', 2, 1);
INSERT INTO `m_soal` VALUES (92, 13, 5, 1, '', '', 'Soal ke 5 - Kebersihan', '#####opsi A.5', '#####opsi B.5', '#####opsi C.5', '#####opsi D.5', '#####opsi E.5', 'E', '2020-11-23 09:14:02', 0, 3);
INSERT INTO `m_soal` VALUES (93, 13, 5, 1, '', '', 'Soal ke 6 - Kebersihan', '#####opsi A.6', '#####opsi B.6', '#####opsi C.6', '#####opsi D.6', '#####opsi E.6', 'C', '2020-11-23 09:14:02', 2, 1);
INSERT INTO `m_soal` VALUES (94, 13, 5, 1, '', '', 'Soal ke 7 - Kebersihan', '#####opsi A.7', '#####opsi B.7', '#####opsi C.7', '#####opsi D.7', '#####opsi E.7', 'A', '2020-11-23 09:14:02', 2, 1);
INSERT INTO `m_soal` VALUES (95, 13, 5, 1, '', '', 'Soal ke 8 - Kebersihan', '#####opsi A.8', '#####opsi B.8', '#####opsi C.8', '#####opsi D.8', '#####opsi E.8', 'B', '2020-11-23 09:14:02', 3, 0);
INSERT INTO `m_soal` VALUES (96, 13, 5, 1, '', '', 'Soal ke 9 - Kebersihan', '#####opsi A.9', '#####opsi B.9', '#####opsi C.9', '#####opsi D.9', '#####opsi E.9', 'B', '2020-11-23 09:14:02', 2, 1);
INSERT INTO `m_soal` VALUES (98, 13, 5, 1, '', '', 'Soal ke 555', '#####opsi A.1', '#####opsi B.1', '#####opsi C.1', '#####opsi D.1', '#####opsi E.1', 'A', '2020-11-23 10:59:51', 0, 0);
INSERT INTO `m_soal` VALUES (99, 13, 5, 1, '', '', 'Soal ke 101', '#####opsi A.2', '#####opsi B.2', '#####opsi C.2', '#####opsi D.2', '#####opsi E.2', 'B', '2020-11-23 10:59:51', 0, 0);
INSERT INTO `m_soal` VALUES (100, 13, 5, 1, '', '', 'Soal ke 777', '#####opsi A.3', '#####opsi B.3', '#####opsi C.3', '#####opsi D.3', '#####opsi E.3', 'E', '2020-11-23 10:59:51', 0, 0);
INSERT INTO `m_soal` VALUES (101, 14, 6, 1, '', '', 'KEAMANAN 1', '#####capek euy', '#####opsi B.1', '#####opsi C.1', '#####opsi D.1', '#####opsi E.1', 'A', '2020-11-23 11:05:09', 4, 1);
INSERT INTO `m_soal` VALUES (102, 14, 6, 1, '', '', 'KEAMANAN @', '#####opsi A.2', '#####opsi B.2', '#####opsi C.2', '#####opsi D.2', '#####opsi E.2', 'B', '2020-11-23 11:05:09', 5, 0);
INSERT INTO `m_soal` VALUES (103, 14, 6, 1, '', '', '<p>KEAMANAN 3</p>\r\n', '#####<p>opsi A.3</p>\r\n', '#####<p>opsi B.3</p>\r\n', '#####<p>opsi C.3</p>\r\n', '#####<p>opsi D.3</p>\r\n', '#####opsi E.3', 'A', '2020-11-23 11:05:09', 0, 5);
INSERT INTO `m_soal` VALUES (104, 14, 6, 1, '', '', 'KEAMANAN', '#####opsi A.4', '#####opsi B.4', '#####opsi C.4', '#####opsi D.4', '#####opsi E.4', 'D', '2020-11-23 11:05:09', 2, 3);
INSERT INTO `m_soal` VALUES (105, 14, 6, 1, '', '', '<p>APA ITU AMAN</p>\r\n', '#####<p>opsi A.5</p>\r\n', '#####<p>opsi B.5</p>\r\n', '#####<p>opsi C.5</p>\r\n', '#####<p>opsi D.5</p>\r\n', '#####opsi E.5', 'A', '2020-11-23 11:05:09', 1, 3);
INSERT INTO `m_soal` VALUES (106, 14, 6, 1, '', '', 'AMAN', '#####opsi A.6', '#####opsi B.6', '#####opsi C.6', '#####opsi D.6', '#####opsi E.6', 'C', '2020-11-23 11:05:09', 4, 1);
INSERT INTO `m_soal` VALUES (107, 14, 6, 1, '', '', 'MANA AMAN', '#####opsi A.7', '#####opsi B.7', '#####opsi C.7', '#####opsi D.7', '#####opsi E.7', 'A', '2020-11-23 11:05:09', 3, 2);
INSERT INTO `m_soal` VALUES (108, 14, 6, 1, '', '', 'AMAAAAN', '#####opsi A.8', '#####opsi B.8', '#####opsi C.8', '#####opsi D.8', '#####opsi E.8', 'B', '2020-11-23 11:05:09', 3, 1);
INSERT INTO `m_soal` VALUES (109, 14, 6, 1, '', '', 'MAN AMAN AMAN', '#####opsi A.9', '#####opsi B.9', '#####opsi C.9', '#####opsi D.9', '#####opsi E.9', 'B', '2020-11-23 11:05:09', 3, 1);
INSERT INTO `m_soal` VALUES (110, 14, 6, 1, '', '', 'MANN', '#####opsi A.10', '#####opsi B.10', '#####opsi C.10', '#####opsi D.10', '#####opsi E.10', 'C', '2020-11-23 11:05:09', 2, 2);
INSERT INTO `m_soal` VALUES (111, 14, 6, 1, '', '', 'OKE', '#####opsi A.11', '#####opsi B.11', '#####opsi C.11', '#####opsi D.11', '#####opsi E.11', 'D', '2020-11-23 11:05:09', 0, 0);
INSERT INTO `m_soal` VALUES (112, 14, 6, 1, '', '', 'SIAP', '#####opsi A.12', '#####opsi B.12', '#####opsi C.12', '#####opsi D.12', '#####opsi E.12', 'D', '2020-11-23 11:05:09', 0, 2);
INSERT INTO `m_soal` VALUES (113, 14, 6, 1, '', '', 'LAKSANAKEUN', '#####opsi A.13', '#####opsi B.13', '#####opsi C.13', '#####opsi D.13', '#####opsi E.13', 'A', '2020-11-23 11:05:09', 1, 1);

-- ----------------------------
-- Table structure for tr_guru_mapel
-- ----------------------------
DROP TABLE IF EXISTS `tr_guru_mapel`;
CREATE TABLE `tr_guru_mapel`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_guru`(`id_guru`) USING BTREE,
  INDEX `id_mapel`(`id_mapel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tr_guru_mapel
-- ----------------------------
INSERT INTO `tr_guru_mapel` VALUES (27, 12, 5);
INSERT INTO `tr_guru_mapel` VALUES (28, 12, 6);
INSERT INTO `tr_guru_mapel` VALUES (29, 13, 5);
INSERT INTO `tr_guru_mapel` VALUES (30, 14, 6);

-- ----------------------------
-- Table structure for tr_guru_tes
-- ----------------------------
DROP TABLE IF EXISTS `tr_guru_tes`;
CREATE TABLE `tr_guru_tes`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `detil_jenis` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_mulai` datetime(0) NOT NULL,
  `terlambat` datetime(0) NOT NULL,
  `token` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_guru`(`id_guru`) USING BTREE,
  INDEX `id_mapel`(`id_mapel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tr_guru_tes
-- ----------------------------
INSERT INTO `tr_guru_tes` VALUES (1, 13, 5, 'UJIAN PRE TEST 1', 10, 20, 'acak', '', '2020-11-23 10:21:00', '2020-11-16 23:59:00', 'FHPID');
INSERT INTO `tr_guru_tes` VALUES (2, 13, 5, 'Ujian Test Pilihan Ganda 1', 5, 9, 'set', '', '2020-11-23 10:52:00', '2020-11-23 14:35:00', 'BJLWR');
INSERT INTO `tr_guru_tes` VALUES (3, 14, 6, 'UJIAN PRE TEST KEAMANAN kode 1', 10, 10, 'set', '', '2020-11-23 11:06:00', '2020-11-23 12:59:00', 'VQNFI');

-- ----------------------------
-- Table structure for tr_ikut_ujian
-- ----------------------------
DROP TABLE IF EXISTS `tr_ikut_ujian`;
CREATE TABLE `tr_ikut_ujian`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `list_jawaban` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` decimal(10, 2) NOT NULL,
  `nilai_bobot` decimal(10, 2) NOT NULL,
  `tgl_mulai` datetime(0) NOT NULL,
  `tgl_selesai` datetime(0) NOT NULL,
  `status` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_tes`(`id_tes`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tr_ikut_ujian
-- ----------------------------
INSERT INTO `tr_ikut_ujian` VALUES (2, 1, 16, '96,97,94,89,88,92,90,95,91,93', '96:B:N,97:C:N,94:A:N,89:B:N,88:A:N,92:C:N,90:A:N,95:B:N,91:D:N,93:C:N', 8, 80.00, 80.00, '2020-11-23 10:21:04', '2020-11-23 10:41:04', 'N');
INSERT INTO `tr_ikut_ujian` VALUES (3, 3, 390, '110,102,113,107,112,103,106,104,108,101', '110:A:N,102:B:N,113:D:Y,107:D:N,112:D:Y,103:C:N,106:A:N,104:B:N,108:B:N,101:C:N', 2, 20.00, 20.00, '2020-11-23 11:11:02', '2020-11-23 11:21:02', 'N');
INSERT INTO `tr_ikut_ujian` VALUES (4, 3, 390, '104,105,103,112,102,106,109,101,107,113', '104:A:N,105:D:Y,103:D:N,112:D:N,102:B:N,106:C:N,109:B:N,101:A:N,107:A:N,113:A:N', 6, 60.00, 60.00, '2020-11-23 11:14:11', '2020-11-23 11:24:11', 'N');
INSERT INTO `tr_ikut_ujian` VALUES (7, 3, 38, '101,102,103,104,105,106,107,108,109,110', '101:A:N,102:B:N,103:C:N,104:C:N,105:B:N,106:C:N,107:D:N,108:A:Y,109:D:N,110:B:Y', 3, 30.00, 30.00, '2020-11-23 11:53:08', '2020-11-23 12:03:08', 'N');

-- ----------------------------
-- Triggers structure for table m_guru
-- ----------------------------
DROP TRIGGER IF EXISTS `hapus_guru`;
delimiter ;;
CREATE TRIGGER `hapus_guru` AFTER DELETE ON `m_guru` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_guru = OLD.id;
DELETE FROM m_admin WHERE m_admin.level = 'guru' AND m_admin.kon_id = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_guru = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_guru = OLD.id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table m_mapel
-- ----------------------------
DROP TRIGGER IF EXISTS `hapus_mapel`;
delimiter ;;
CREATE TRIGGER `hapus_mapel` AFTER DELETE ON `m_mapel` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_mapel = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_mapel = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_mapel = OLD.id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table m_siswa
-- ----------------------------
DROP TRIGGER IF EXISTS `hapus_siswa`;
delimiter ;;
CREATE TRIGGER `hapus_siswa` AFTER DELETE ON `m_siswa` FOR EACH ROW BEGIN
DELETE FROM tr_ikut_ujian WHERE tr_ikut_ujian.id_user = OLD.id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
