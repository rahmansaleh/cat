/*
 Navicat Premium Data Transfer

 Source Server         : simrs
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : cat

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 20/11/2020 20:20:42
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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_admin
-- ----------------------------
INSERT INTO `m_admin` VALUES (1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin', 0);
INSERT INTO `m_admin` VALUES (28, 'siswa', '3afa0d81296a4f17d477ec823261b1ec', 'siswa', 8);
INSERT INTO `m_admin` VALUES (29, 'guru', '9310f83135f238b04af729fec041cca8', 'guru', 10);
INSERT INTO `m_admin` VALUES (30, '8', 'c9f0f895fb98ab9159f51fd0297e236d', 'siswa', 15);
INSERT INTO `m_admin` VALUES (31, '7', '8f14e45fceea167a5a36dedd4bea2543', 'siswa', 14);
INSERT INTO `m_admin` VALUES (32, '6', '1679091c5a880faf6fb5e6087eb1b2dc', 'siswa', 13);
INSERT INTO `m_admin` VALUES (33, '5', 'e4da3b7fbbce2345d7772b0674a318d5', 'siswa', 12);
INSERT INTO `m_admin` VALUES (34, '4', 'a87ff679a2f3e71d9181a67b7542122c', 'siswa', 11);
INSERT INTO `m_admin` VALUES (35, '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'siswa', 10);
INSERT INTO `m_admin` VALUES (36, '2', 'c81e728d9d4c2f636f067f89cc14862c', 'siswa', 9);
INSERT INTO `m_admin` VALUES (37, '2', 'c81e728d9d4c2f636f067f89cc14862c', 'guru', 11);

-- ----------------------------
-- Table structure for m_guru
-- ----------------------------
DROP TABLE IF EXISTS `m_guru`;
CREATE TABLE `m_guru`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_guru
-- ----------------------------
INSERT INTO `m_guru` VALUES (10, '1', 'Mas Latief');
INSERT INTO `m_guru` VALUES (11, '2', 'Mas Rahmat');

-- ----------------------------
-- Table structure for m_mapel
-- ----------------------------
DROP TABLE IF EXISTS `m_mapel`;
CREATE TABLE `m_mapel`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_siswa
-- ----------------------------
INSERT INTO `m_siswa` VALUES (8, 'Bpk petugas keamanan 1', '1', 'Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (9, 'Bpk Petugas Keamanan 2', '2', 'Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (10, 'Bpk Petugas Keamanan 3', '3', 'Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (11, 'Bpk Petugas Keamanan 4', '4', 'Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (12, 'Bpk Petugas Keamanan 5', '5', 'Petugas Keamanan');
INSERT INTO `m_siswa` VALUES (13, 'Ibu Petugas Kebersihan 1', '6', 'Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (14, 'Ibu Petugas Kebersihan 2', '7', 'Petugas Kebersihan');
INSERT INTO `m_siswa` VALUES (15, 'Ibu Petugas Kebersihan 3', '8', 'Soal PJLP Petugas Keamanan');

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
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_soal
-- ----------------------------
INSERT INTO `m_soal` VALUES (52, 10, 5, 1, '', '', 'Soal ke 1', '#####opsi A.1', '#####opsi B.1', '#####opsi C.1', '#####opsi D.1', '#####opsi E.1', 'A', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (53, 10, 5, 1, '', '', 'Soal ke 2', '#####opsi A.2', '#####opsi B.2', '#####opsi C.2', '#####opsi D.2', '#####opsi E.2', 'B', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (54, 10, 5, 1, '', '', 'Soal ke 3', '#####opsi A.3', '#####opsi B.3', '#####opsi C.3', '#####opsi D.3', '#####opsi E.3', 'E', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (55, 10, 5, 1, '', '', 'Soal ke 4', '#####opsi A.4', '#####opsi B.4', '#####opsi C.4', '#####opsi D.4', '#####opsi E.4', 'D', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (56, 10, 5, 1, '', '', 'Soal ke 5', '#####opsi A.5', '#####opsi B.5', '#####opsi C.5', '#####opsi D.5', '#####opsi E.5', 'E', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (57, 10, 5, 1, '', '', 'Soal ke 6', '#####opsi A.6', '#####opsi B.6', '#####opsi C.6', '#####opsi D.6', '#####opsi E.6', 'C', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (58, 10, 5, 1, '', '', 'Soal ke 7', '#####opsi A.7', '#####opsi B.7', '#####opsi C.7', '#####opsi D.7', '#####opsi E.7', 'A', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (59, 10, 5, 1, '', '', 'Soal ke 8', '#####opsi A.8', '#####opsi B.8', '#####opsi C.8', '#####opsi D.8', '#####opsi E.8', 'B', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (60, 10, 5, 1, '', '', 'Soal ke 9', '#####opsi A.9', '#####opsi B.9', '#####opsi C.9', '#####opsi D.9', '#####opsi E.9', 'B', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (61, 10, 5, 1, '', '', 'Soal ke 10', '#####opsi A.10', '#####opsi B.10', '#####opsi C.10', '#####opsi D.10', '#####opsi E.10', 'C', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (62, 10, 5, 1, '', '', 'Soal ke 11', '#####opsi A.11', '#####opsi B.11', '#####opsi C.11', '#####opsi D.11', '#####opsi E.11', 'D', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (63, 10, 5, 1, '', '', 'Soal ke 12', '#####opsi A.12', '#####opsi B.12', '#####opsi C.12', '#####opsi D.12', '#####opsi E.12', 'E', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (64, 10, 5, 1, '', '', 'Soal ke 13', '#####opsi A.13', '#####opsi B.13', '#####opsi C.13', '#####opsi D.13', '#####opsi E.13', 'A', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (65, 10, 5, 1, '', '', 'Soal ke 14', '#####opsi A.14', '#####opsi B.14', '#####opsi C.14', '#####opsi D.14', '#####opsi E.14', 'A', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (66, 10, 5, 1, '', '', 'Soal ke 15', '#####opsi A.15', '#####opsi B.15', '#####opsi C.15', '#####opsi D.15', '#####opsi E.15', 'D', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (67, 10, 5, 1, '', '', 'Soal ke 16', '#####opsi A.16', '#####opsi B.16', '#####opsi C.16', '#####opsi D.16', '#####opsi E.16', 'C', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (68, 10, 5, 1, '', '', 'Soal ke 17', '#####opsi A.17', '#####opsi B.17', '#####opsi C.17', '#####opsi D.17', '#####opsi E.17', 'D', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (69, 10, 5, 1, '', '', 'Soal ke 18', '#####opsi A.18', '#####opsi B.18', '#####opsi C.18', '#####opsi D.18', '#####opsi E.18', 'E', '2020-11-20 18:57:51', 0, 0);
INSERT INTO `m_soal` VALUES (70, 11, 6, 1, '', '', 'Soal ke 1', '#####opsi A.1', '#####opsi B.1', '#####opsi C.1', '#####opsi D.1', '#####opsi E.1', 'A', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (71, 11, 6, 1, '', '', 'Soal ke 2', '#####opsi A.2', '#####opsi B.2', '#####opsi C.2', '#####opsi D.2', '#####opsi E.2', 'B', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (72, 11, 6, 1, '', '', 'Soal ke 3', '#####opsi A.3', '#####opsi B.3', '#####opsi C.3', '#####opsi D.3', '#####opsi E.3', 'E', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (73, 11, 6, 1, '', '', 'Soal ke 4', '#####opsi A.4', '#####opsi B.4', '#####opsi C.4', '#####opsi D.4', '#####opsi E.4', 'D', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (74, 11, 6, 1, '', '', 'Soal ke 5', '#####opsi A.5', '#####opsi B.5', '#####opsi C.5', '#####opsi D.5', '#####opsi E.5', 'E', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (75, 11, 6, 1, '', '', 'Soal ke 6', '#####opsi A.6', '#####opsi B.6', '#####opsi C.6', '#####opsi D.6', '#####opsi E.6', 'C', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (76, 11, 6, 1, '', '', 'Soal ke 7', '#####opsi A.7', '#####opsi B.7', '#####opsi C.7', '#####opsi D.7', '#####opsi E.7', 'A', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (77, 11, 6, 1, '', '', 'Soal ke 8', '#####opsi A.8', '#####opsi B.8', '#####opsi C.8', '#####opsi D.8', '#####opsi E.8', 'B', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (78, 11, 6, 1, '', '', 'Soal ke 9', '#####opsi A.9', '#####opsi B.9', '#####opsi C.9', '#####opsi D.9', '#####opsi E.9', 'B', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (79, 11, 6, 1, '', '', 'Soal ke 10', '#####opsi A.10', '#####opsi B.10', '#####opsi C.10', '#####opsi D.10', '#####opsi E.10', 'C', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (80, 11, 6, 1, '', '', 'Soal ke 11', '#####opsi A.11', '#####opsi B.11', '#####opsi C.11', '#####opsi D.11', '#####opsi E.11', 'D', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (81, 11, 6, 1, '', '', 'Soal ke 12', '#####opsi A.12', '#####opsi B.12', '#####opsi C.12', '#####opsi D.12', '#####opsi E.12', 'E', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (82, 11, 6, 1, '', '', 'Soal ke 13', '#####opsi A.13', '#####opsi B.13', '#####opsi C.13', '#####opsi D.13', '#####opsi E.13', 'A', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (83, 11, 6, 1, '', '', 'Soal ke 14', '#####opsi A.14', '#####opsi B.14', '#####opsi C.14', '#####opsi D.14', '#####opsi E.14', 'A', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (84, 11, 6, 1, '', '', 'Soal ke 15', '#####opsi A.15', '#####opsi B.15', '#####opsi C.15', '#####opsi D.15', '#####opsi E.15', 'D', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (85, 11, 6, 1, '', '', 'Soal ke 16', '#####opsi A.16', '#####opsi B.16', '#####opsi C.16', '#####opsi D.16', '#####opsi E.16', 'C', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (86, 11, 6, 1, '', '', 'Soal ke 17', '#####opsi A.17', '#####opsi B.17', '#####opsi C.17', '#####opsi D.17', '#####opsi E.17', 'D', '2020-11-20 18:58:11', 0, 0);
INSERT INTO `m_soal` VALUES (87, 11, 6, 1, '', '', 'Soal ke 18', '#####opsi A.18', '#####opsi B.18', '#####opsi C.18', '#####opsi D.18', '#####opsi E.18', 'E', '2020-11-20 18:58:11', 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tr_guru_mapel
-- ----------------------------
INSERT INTO `tr_guru_mapel` VALUES (23, 11, 5);
INSERT INTO `tr_guru_mapel` VALUES (24, 11, 6);
INSERT INTO `tr_guru_mapel` VALUES (25, 10, 5);
INSERT INTO `tr_guru_mapel` VALUES (26, 10, 6);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tr_guru_tes
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tr_ikut_ujian
-- ----------------------------

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
