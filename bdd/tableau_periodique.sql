-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 24 oct. 2023 à 10:18
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tableau_periodique`
--

-- --------------------------------------------------------

--
-- Structure de la table `atome`
--

DROP TABLE IF EXISTS `atome`;
CREATE TABLE IF NOT EXISTS `atome` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_categorie` int NOT NULL,
  `nom` varchar(13) DEFAULT NULL,
  `slug` varchar(13) DEFAULT NULL,
  `electron` varchar(255) NOT NULL,
  `numero` int UNSIGNED DEFAULT NULL,
  `symbole` varchar(6) NOT NULL,
  `info_groupe` varchar(10) NOT NULL,
  `info_periode` varchar(10) NOT NULL,
  `info_bloc` varchar(10) NOT NULL,
  `masse_volumique` varchar(255) NOT NULL,
  `cas` varchar(255) NOT NULL,
  `einecs` varchar(255) NOT NULL,
  `masse_atomique` varchar(255) NOT NULL,
  `rayon_atomique` varchar(255) NOT NULL,
  `rayon_de_covalence` varchar(255) NOT NULL,
  `rayon_de_van_der_waals` varchar(255) NOT NULL,
  `configuration_electronique` varchar(255) NOT NULL,
  `etat_oxydation` varchar(255) NOT NULL,
  `decouverte_annee` varchar(255) NOT NULL,
  `decouverte_noms` varchar(255) NOT NULL,
  `decouverte_pays` varchar(255) NOT NULL,
  `electronegativite` varchar(255) NOT NULL,
  `point_de_fusion` varchar(255) NOT NULL,
  `point_d_ebullition` varchar(255) NOT NULL,
  `is_radioactif` tinyint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `atome_ibfk_1` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `atome`
--

INSERT INTO `atome` (`id`, `id_categorie`, `nom`, `slug`, `electron`, `numero`, `symbole`, `info_groupe`, `info_periode`, `info_bloc`, `masse_volumique`, `cas`, `einecs`, `masse_atomique`, `rayon_atomique`, `rayon_de_covalence`, `rayon_de_van_der_waals`, `configuration_electronique`, `etat_oxydation`, `decouverte_annee`, `decouverte_noms`, `decouverte_pays`, `electronegativite`, `point_de_fusion`, `point_d_ebullition`, `is_radioactif`) VALUES
(1, 8, 'Hydrogène', 'hydrogene', '1', 1, 'H', '1', '1', 's', '0,08988 g·l-1,\r\n0,0708 g·ml-1 (liquide, -253 °C),\r\n0,0706 g·ml-1 (solide, -262 °C)', '12385-13-6', '', '1,00794', '25 pm', '0,31 ± 0,05 Å', '120 pm', '1s1', '-1, +1', '1766', 'Henry Cavendish', 'Grande-Bretagne', '2,2', '', '', 0),
(2, 10, 'Hélium', 'helium', '2', 2, 'He', '18', '1', 's', '0,1785 g·l-1 (0 °C, 1 atm);\r\n0,125 g·ml-1 (liquide, -268,93 °C)', '12385-13-6', '231-168-5', '4,002602', '128 pm (31 pm)', '28 pm', '140 pm', '1s2', '0', '1895', 'Jules Janssen, Joseph Norman Lockyer', 'Grande-Bretagne', '', '', '-268,93 °C', 0),
(3, 1, 'Lithium', 'lithium', '2|1', 3, 'Li', '1', '2', 's', '0,534 g·cm-3 (20 °C)', '7439-93-2', '231-102-5', '6,941', '145 pm (167 pm)', '1,28 ± 0,07 Å', '182 pm', '[He] 2s1', '+1', '1817', 'Johan August Arfwedson', 'Suède', '0,98', '180,5 °C', '1 342 °C', 0),
(4, 2, 'Béryllium', 'beryllium', '2|2', 4, 'Be', '2 (IIA)', '2', 's', '1,848 g·cm-3 (20 °C)', '7440-41-7', '231-150-7', '9,012182', '112 pm', '0,96 ± 0,03 Å', '', '[He] 2s2', '2', '1798', 'Louis-Nicolas Vauquelin', 'France', '1,57', '1 287 °C', '2 471 °C', 0),
(5, 7, 'Bore', 'bore', '2|3', 5, 'B', '13 (IIIA)', '2', 'p', '2,34 g·cm-3 (cristaux)\r\n2,37 g·cm-3 (variété amorphe)', '7440-42-8', '231-151-2', '10,811', '85 pm (87 pm)', '0,84 ± 0,03 Å', '208 pm', '[He] 2s2 2p1', '3', '1808', 'Louis Joseph Gay-Lussac, Louis Jacques Thénard, Humphry Davy', 'France et Grande-Bretagne', '2,04', '2 075 °C', '4 000 °C', 0),
(6, 8, 'Carbone', 'carbone', '2|4', 6, 'C', '14', '2', 'p', '1,8 à 2,1 g·cm-3 (amorphe),\r\n1,9 à 2,3 g·cm-3 (graphite),\r\n3,15 à 3,53 g·cm-3 (diamant),\r\n3,513 g·cm-3 (diamant gemme, 25 °C)', '7440-44-0', '', '12,0107', '70 pm (67 pm)', 'sp3 0,76 ± 0,01 Å\r\nsp2 0,73 ± 0,02 Å\r\nsp 0,69 ± 0,01 Å', '150 pm', '[He] 2s2 2p2', '-4, 0, +4, +2', 'Antiquité', '', '', '2,55', '', '3 825 °C', 0),
(7, 8, 'Azote', 'azote', '2|5', 7, 'N', '15 (VA)', '2', 'p', '1,24982 g·l-1', '17778-88-0 (atome), 7727-37-9 (molécule)', '231-783-9', '14,0067', '65 pm (56 pm)', '0,71 ± 0,01 Å', '150 pm', '1s2 2s2 2p3', '-3, 0, +2, +3, +4, +5', '1772', 'Daniel Rutherford', 'Écosse', '3,04', '-210,00 °C', '-195,798 °C', 0),
(8, 8, 'Oxygène', 'oxygene', '2|6', 8, 'O', '16', '2', 'p', '1,42763 kg·m-3', '17778-80-2', '', '15,9994', '60 pm (48 pm)', '0,66 ± 0,02 Å', '140 pm', '1s2 2s2 2p4', '-2, -1', '1774', 'Carl Wilhelm Scheele, Joseph Priestley', 'Grande-Bretagne et Suède', '3,44', '-218,79 °C', '-182,95 °C', 0),
(9, 9, 'Fluor', 'fluor', '2|7', 9, 'F', '17 (VII)', '2', 'p', '1,696 g·l-1 (0 °C, 1 atm),\r\n1,50 g·cm-3 (liquide, -188,12 °C)', '14762-94-8', '', '18,9984032', '50 pm (42 pm)', '0,57 ± 0,03 Å', '135 pm', '[He] 2s2 2p5', '-1', '1886', 'Henri Moissan', 'France', '3,98', '-219,67 °C', '-188,12 °C', 0),
(10, 10, 'Néon', 'neon', '2|8', 10, 'Ne', '18 (VIIIA)', '2', 'p', '0,90032 g·l-1 (1 atm, 0 °C)', '7440-01-9', '231-110-9', '20,1797', '(38 pm)', '0,58 Å', '154 pm', '[He] 2s2 2p6', '0', '1898', 'Morris William Travers, William Ramsay', 'Grande-Bretagne', '', '', '-246,053 °C', 0),
(11, 1, 'Sodium', 'sodium', '2|8|1', 11, 'Na', '1', '3', 's', '0,971 g·cm-3 (20 °C)', '7440-23-5', '231-132-9', '22,98976928', '180 pm (190 pm)', '1,66 ± 0,09 Å', '227 pm', 'Ne 3s1', '+1', '1807', 'Humphry Davy', 'Grande-Bretagne', '0,93', '97,80 °C', '883 °C', 0),
(12, 2, 'Magnésium', 'magnesium', '2|8|2', 12, 'Mg', '2 (IIA)', '3', 's', '1,738 g·cm-3 (20 °C)', '7439-95-4', '231-104-6', '24,3050', '150 pm', '1,41 ± 0,07 Å', '173', 'Ne 3s2', '2', '1775', 'Joseph Black', 'Écosse', '1,31', '650 °C', '1 090 °C', 0),
(13, 6, 'Aluminium', 'aluminium', '2|8|3', 13, 'Al', '13 (IIIA)', '3', 'p', '2,6989 g·cm-3', '7429-90-5', '231-072-3', '26,9815386', '125 pm (118 pm)', '1,21 ± 0,04 Å', '205 pm', '[Ne] 3s2 3p1', '3', '1827', 'Hans Christian Ørsted', 'Danemark', '1,61', '660,323 °C', '2 519 °C', 0),
(14, 7, 'Silicium', 'silicium', '2|8|4', 14, 'Si', '14', '3', 'p', '2,33 g·cm-3 (25 °C)', '7440-21-3', '231-130-8', '28,0855', '110 pm (111 pm)', '1,11 ± 0,02 Å', '210', 'Ne 3s2 3p2', '+1, +2, +3, +4', '1824', 'Jöns Jacob Berzelius', 'Suède', '1,9', '1 414 °C', '3 265 °C', 0),
(15, 8, 'Phosphore', 'phosphore', '2|8|5', 15, 'P', '15 (VA)', '3', 'p', '1,82 g·cm-3 (blanc),\r\n2,16 g·cm-3 (rouge),\r\n2,25 à 2,69 g·cm-3 (noir)', '7723-14-0 (jaune), 29879-37-6 (rouge)', '231-768-7', '30,973762', '100 pm (98 pm)', '1,07 ± 0,03 Å', '180', 'Ne 3s2 3p3', '±3, 5, 4', '1669', 'Hennig Brandt', 'Allemagne', '2,19', '44,15 °C', '280,5 °C', 0),
(16, 8, 'Soufre', 'soufre', '2|8|6', 16, 'S', '16 (VIA)', '3', 'p', '2,07 g·cm-3 (rhombique),\r\n2,00 g·cm-3 (monoclinique, 20 °C)', '7704-34-9', '231-722-6', '32,065', '100 pm (88 pm)', '1,05 ± 0,03 Å', '180', 'Ne 3s2 3p4', '±2, 4, 6', 'Antiquité', '', '', '2,58', '115,21 °C', '444,61 °C', 0),
(17, 9, 'Chlore', 'chlore', '2|8|7', 17, 'Cl', '17 (VII)', '3', 'p', '3,214 g·l-1,\r\n1,56 g·cm-3 (-33,6 °C)', '22537-15-1', '', '35,453', '100 pm (79 pm)', '1,02 ± 0,04 Å', '180 pm', 'Ne 3s2 3p5', '0, ±1, +3, +5, +7', '1774', 'Carl Wilhelm Scheele', 'Suède', '3,16', '-101,5 °C', '-34,04 °C', 0),
(18, 10, 'Argon', 'argon', '2|8|8', 18, 'Ar', '18 (VIIIA)', '3', 'p', '1,7837 g·l-1\r\n(0 °C, 1 atm)', '7440-37-1', '231-147-0', '39,948', '(71 pm)', '1,06 ± 0,10 Å', '188 pm', 'Ne 3s2 3p6', '0', '1894', 'William Ramsay, John William Strutt Rayleigh', '', '', '-189,36 °C', '-185,85 °C', 0),
(19, 1, 'Potassium', 'potassium', '2|8|8|1', 19, 'K', '1 (IA)', '4', 's', '0,89 g·cm-3', '7440-09-7', '231-119-8', '39,0983', '220 pm (243 pm)', '2,03 ± 0,12 Å', '275', '[Ar] 4s1', '1', '1807', 'Humphry Davy', 'Grande-Bretagne', '0,82', '63,5 °C', '759 °C', 0),
(20, 2, 'Calcium', 'calcium', '2|8|8|2', 20, 'Ca', '2 (IIA)', '4', 's', '1,54 g·cm-3 (20 °C)', '7440-70-2', '231-179-5', '40,078', '180 pm (194 pm)', '1,76 ± 0,10 Å', '197,3 pm', '[Ar] 4s2', '2', '1808', 'Humphry Davy', 'Grande-Bretagne', '1', '842 °C', '1 484 °C', 0),
(21, 5, 'Scandium', 'scandium', '2|8|9|2', 21, 'Sc', '3', '4', 'd', '2,989 g·cm-3 (25 °C)', '7440-20-2', '231-129-2', '44,955912', '160 pm (184 pm)', '1,70 ± 0,07 Å', '', 'Ar 3d1 4s2', '3', '1879', 'Lars Fredrik Nilson', 'Suède', '1,36', '1 541 °C', '2 836 °C', 0),
(22, 5, 'Titane', 'titane', '2|8|10|2', 22, 'Ti', '4', '4', 'd', '4,51 g·cm-3', '7440-32-6', '231-142-3', '47,867', '140 pm (176 pm)', '1,60 ± 0,08 Å', '', '[Ar] 3d2 4s2', '4', '1791', 'William Gregor', 'Grande-Bretagne', '1,54', '1 668 °C', '3 287 °C', 0),
(23, 5, 'Vanadium', 'vanadium', '2|8|11|2', 23, 'V', '5', '4', 'd', '6,0 g·cm-3 (18,7 °C)', '7440-62-2', '231-171-1', '50,9415', '135 pm (171 pm)', '1,53 ± 0,08 Å', '', 'Ar 3d3 4s2', '5, 3', '1901', 'Andrés Manuel del Río', 'Suède', '1,63', '1 910 °C', '3 407 °C', 0),
(24, 5, 'Chrome', 'chrome', '2|8|13|1', 24, 'Cr', '6', '4', 'd', '7,15 g·cm-3 (20 °C)', '7440-47-3', '231-157-5', '51,9961', '140 pm (166 pm)', '1,39 ± 0,05 Å', '', '[Ar] 3d5 4s1', '6, 3, 2', '1797', 'Louis-Nicolas Vauquelin', 'France', '1,66', '1 907 °C', '2 671 °C', 0),
(25, 5, 'Manganèse', 'manganese', '2|8|13|2', 25, 'Mn', '7', '4', 'd', '7,21 à 7,44 g·cm-3', '7439-96-5', '231-105-1', '54,938045', '140 pm (161 pm)', '1,39 ± 0,05 Å (low spin)\r\n1,61 ± 0,08 Å (high spin)', '126', '[Ar] 4s2 3d5', '7, 6, 4, 2, 3', '1774', 'Ignatius Gottfried Kaim, Johan Gottlieb Gahn', 'Suède', '1,55', '1 246 °C', '2 061 °C', 0),
(26, 5, 'Fer', 'fer', '2|8|14|2', 26, 'Fe', '8', '4', 'd', '7,874 g·cm-3 à (20 °C)', '7439-89-6', '231-096-4', '55,845', '140 pm (156 pm)', '1,32 ± 0,03 Å (low spin)\r\n1,52 ± 0,06 Å (high spin)', '', '[Ar] 3d6 4s2', '+2, +3, +4, +6', 'Antiquité', '', '', '1,83', '1 538 °C', '2 861 °C', 0),
(27, 5, 'Cobalt', 'cobalt', '2|8|15|2', 27, 'Co', '9', '4', 'd', '8,9 g·cm-3 (20 °C)', '7440-48-4', '231-158-0', '58,933195', '135 pm (152 pm)', '1,26 ± 0,03 Å (low spin)\r\n1,50 ± 0,07 Å (high spin)', '', '[Ar] 4s2 3d7', '+1, +2, +3, +4', '1735', 'Georg Brandt', 'Suède', '1,88', '1 495 °C', '2 927 °C', 0),
(28, 5, 'Nickel', 'nickel', '2|8|16|2', 28, 'Ni', '10', '4', 'd', '8,902 g·cm-3 (25 °C)', '7440-02-0', '231-111-4', '58,6934', '135 pm (149 pm)', '1,24 ± 0,04 Å', '163 pm', '[Ar] 4s2 3d8', '2, 3', '1751', 'Axel Frederik Cronstedt', 'Suède', '1,91', '1 455 °C', '2 913 °C', 0),
(29, 5, 'Cuivre', 'cuivre', '2|8|18|1', 29, 'Cu', '11', '4', 'd', '8,96 g·cm-3 (20 °C)', '7440-50-8', '231-159-6', '63,546', '135 pm (145 pm)', '1,32 ± 0,04 Å', '140 pm', '[Ar] 3d10 4s1', '2, 1', 'Antiquité', '', '', '1,9', '1 084,62 °C', '2 562 °C', 0),
(30, 6, 'Zinc', 'zinc', '2|8|18|2', 30, 'Zn', '12', '4', 'd', '7,134 g·cm-3 (25 °C)', '7440-66-6', '231-175-3', '65,409', '135 pm (142 pm)', '1,22 ± 0,04 Å', '139 pm', '[Ar] 3d10 4s2', '2', 'Antiquité', '', '', '1,65', '419,527 °C', '907 °C', 0),
(31, 6, 'Gallium', 'gallium', '2|8|18|3', 31, 'Ga', '13 (IIIA)', '4', 'p', '5,904 g·cm-3 (solide, 29,6 °C),\r\n6,095 g·cm-3 (liquide, 29,6 °C)', '7440-55-3', '231-163-8', '69,723', '130 pm (136 pm)', '1,22 ± 0,03 Å', '187 pm', 'Ar 3d10 4s2 4p1', '3', '1875', 'Paul-Émile Lecoq de Boisbaudran', 'France', '1,81', '29,7646 °C', '2 204 °C', 0),
(32, 7, 'Germanium', 'germanium', '2|8|18|4', 32, 'Ge', '14', '4', 'p', '5,323 g·cm-3 (25 °C)', '7440-56-4', '231-164-3', '72,64', '125 pm (125 pm)', '1,20 ± 0,04 Å', '', 'Ar 3d10 4s2 4p2', '4, 2', '1886', 'Clemens Winkler', 'Allemagne', '2,01', '938,25 °C', '2 833 °C', 0),
(33, 7, 'Arsenic', 'arsenic', '2|8|18|5', 33, 'As', '15', '4', 'p', '5,72 g·cm-3 (gris);\r\n1,97 g·cm-3 (jaune);\r\n4,7–5,1 g·cm-3 (noir)', '7440-38-2', '231-148-6', '74,92160', '115 pm (114 pm)', '1,19 ± 0,04 Å', '185 pm', '[Ar] 4s2 3d10 4p3', '±3, 5', '~1250', 'Albert le Grand', '', '2,18', '817 °C', '339,85 °C', 0),
(34, 8, 'Sélénium', 'selenium', '2|8|18|6', 34, 'Se', '16 (VIA)', '4', 'p', '4,79 g·cm-3 (gris),\r\n4,28 g·cm-3 (vitreux)', '7782-49-2', '231-957-4', '78,96', '115 pm (103 pm)', '1,20 ± 0,04 Å', '190', '[Ar] 3d10 4s2 4p4', '±2, 4, 6', '1817', 'Johan Gottlieb Gahn, Jöns Jacob Berzelius', 'Suède', '2,55', '221 °C', '685 °C', 0),
(35, 9, 'Brome', 'brome', '2|8|18|7', 35, 'Br', '17 (VII)', '4', 'p', '7,59 g·l-1 (gaz)\r\n3,12 g·cm-3 (liquide, 20 °C)', '10097-32-2', '', '79,904', '115 pm (94 pm)', '120 ± 3 pm', '195 pm', '[Ar] 4s2 3d10 4p5', '-1, 0, 1, 3, 5, 7', '1826', 'Leopold Gmelin, Antoine-Jérôme Balard', 'France', '2,96', '-7,2 °C', '58,8 °C', 0),
(36, 10, 'Krypton', 'krypton', '2|8|18|8', 36, 'Kr', '18 (VIIIA)', '4', 'p', '3,733 g·l-1 (0 °C)', '7439-90-9', '231-098-5', '83,798', '(88 pm)', '1,16 ± 0,04 Å', '202 pm', '[Ar] 3d10 4s2 4p6', '0', '1898', 'Morris William Travers, William Ramsay', 'Grande-Bretagne', '', '-157,36 °C', '-153,34 °C', 0),
(37, 1, 'Rubidium', 'rubidium', '2|8|18|8|1', 37, 'Rb', '1 (IA)', '5', 's', '1,532 g·cm-3 (solide, 20 °C),\r\n1,475 g·cm-3 (liquide, 39 °C)', '7440-17-7', '231-126-6', '85,4678', '235 pm (265 pm)', '2,20 ± 0,09 Å', '244 pm', 'Kr 5s1', '1', '1861', '', 'Allemagne', '0,82', '39,30 °C', '688 °C', 0),
(38, 2, 'Strontium', 'strontium', '2|8|18|8|2', 38, 'Sr', '2 (IIA)', '5', 's', '2,64 g·cm-3', '7440-24-6', '231-133-4', '87,62', '219 pm', '1,95 ± 0,10 Å', 'inconnu', 'Kr 5s2', '2', '1790', 'William Cruickshank', 'Écosse', '0,95', '777 °C', '1 382 °C', 0),
(39, 5, 'Yttrium', 'yttrium', '2|8|18|9|2', 39, 'Y', '3', '5', 'd', '4,469 g·cm-3 (25 °C)', '7440-65-5', '231-174-8', '88,90585', '180 pm (212 pm)', '1,90 ± 0,07 Å', '', 'Kr 4d1 5s2', '3', '1794', 'Johan Gadolin', 'Finlande', '1,22', '1 522 °C', '3 345 °C', 0),
(40, 5, 'Zirconium', 'zirconium', '2|8|18|10|2', 40, 'Zr', '4', '5', 'd', '6,52 g·cm-3 (20 °C)', '7440-67-7', '231-176-9', '91,224', '155 pm (206 pm)', '1,75 ± 0,07 Å', '0,160 pm ?', '', '4', '1789', 'Martin Heinrich Klaproth', 'Allemagne', '1,33', '1 855 °C', '4 409 °C', 0),
(41, 5, 'Niobium', 'niobium', '2|8|18|12|1', 41, 'Nb', '5', '5', 'd', '8,57 g·cm-3 (20 °C)', '7440-03-1', '231-113-5', '92,90638', '145 pm (198 pm)', '1,64 ± 0,06 Å', '', 'Kr 4d4', '5, 3', '1801', 'Charles Hatchett', 'Grande-Bretagne', '1,6', '2 477 °C', '4 744 °C', 0),
(42, 5, 'Molybdène', 'molybdene', '2|8|18|13|1', 42, 'Mo', '6', '5', 'd', '10,22 g·cm-3 (20 °C)', '7439-98-7', '231-107-2', '95,94', '145 pm', '1,54 ± 0,05 Å', '', 'Kr 4d5 5s1', '2, 3, 4, 5, 6', '1778', 'Carl Wilhelm Scheele', 'Suède', '2,16', '2 623 °C', '4 639 °C', 0),
(43, 5, 'Technétium', 'technetium', '2|8|18|13|2', 43, 'Tc', '7', '5', 'd', '11,50 g·cm-3 (calculée)', '7440-26-8', '231-136-0', '98', '135 pm (183 pm)', '1,47 ± 0,07 Å', '', 'Kr 4d6 5s1', '7', '1937', '', 'Italie', '2,1', '2 157 °C', '4 265 °C', 1),
(44, 5, 'Ruthénium', 'ruthenium', '2|8|18|15|1', 44, 'Ru', '8', '5', 'd', '12,1 g·cm-3 (20 °C)', '7440-18-8', '231-127-1', '101,07', '130 pm (178 pm)', '1,46 ± 0,07 Å', '', 'Kr 4d7 5s1', '2, 3, 4, 6, 8', '1844', 'Jędrzej Śniadecki', 'Russie', '2,2', '2 334 °C', '4 150 °C', 0),
(45, 5, 'Rhodium', 'rhodium', '2|8|18|16|1', 45, 'Rh', '9', '5', 'd', '12,41 g·cm-3 (20 °C)', '7440-16-6', '231-125-0', '102,90550', '135 pm (173 pm)', '1,42 ± 0,07 Å', '', 'Kr 4d8 5s1', '2, 3, 4', '1803', 'William Hyde Wollaston', 'Grande-Bretagne', '2,28', '1 964 °C', '3 695 °C', 0),
(46, 5, 'Palladium', 'palladium', '2|8|18|18', 46, 'Pd', '10', '5', 'd', '12,02 g·cm-3 (20 °C)', '7440-05-3', '231-115-6', '106,42', '140 pm (169 pm)', '1,39 ± 0,06 Å', '163 pm', 'Kr 4d10', '0, 1, 2, 4, 6', '1803', 'William Hyde Wollaston', 'Grande-Bretagne', '2,2', '1 554,8 °C', '2 963 °C', 0),
(47, 5, 'Argent', 'argent', '2|8|18|18|1', 47, 'Ag', '11', '5', 'd', '10,50 g·cm-3 (20 °C);\r\n9,35 g·cm-3 (liquide, 961,9 °C),\r\n9,05 g·cm-3 (liquide, 1 250 °C)', '7440-22-4', '231-131-3', '107,8682', '160 pm (165 pm)', '1,45 ± 0,05 Å', '172 pm', 'Kr 4d10 5s1', '±1', 'Antiquité', '', '', '1,93', '961,78 °C', '~2 200 °C', 0),
(48, 6, 'Cadmium', 'cadmium', '2|8|18|18|2', 48, 'Cd', '12', '5', 'd', '8,69 g·cm-3 (20 °C)', '7440-43-9', '231-152-8', '112,411', '155 pm (161 pm)', '1,44 ± 0,09 Å', '158 pm', 'Kr 4d10 5s2', '2', '1817', 'Karl Samuel Leberecht Hermann, Friedrich Stromeyer', 'Allemagne', '1,69', '321,07 °C', '767 °C', 0),
(49, 6, 'Indium', 'indium', '2|8|18|18|3', 49, 'In', '13 (IIIA)', '5', 'p', '7,31 g·cm-3 (20 °C)', '7440-74-6', '231-180-0', '114,818', '155 pm (156 pm)', '1,42 ± 0,05 Å', '193 pm', 'Kr 4d10 5s2 5p1', '3', '1863', '', 'Allemagne', '1,78', '156,5985 °C', '2 072 °C', 0),
(50, 6, 'Étain', 'etain', '2|8|18|18|4', 50, 'Sn', '14', '5', 'p', '5,77 g·cm-3 (gris),\r\n7,29 g·cm-3 (blanc)', '7440-31-5', '231-141-8', '118,710', '145 pm (145 pm)', '1,39 ± 0,04 Å', '217', 'Kr 4d10 5s2 5p2', '0, +2, +4', 'Antiquité', '', '', '1,96', '231,928 °C', '2 602 °C', 0),
(51, 7, 'Antimoine', 'antimoine', '2|8|18|18|5', 51, 'Sb', '15', '5', 'p', '6,68 g·cm-3 (20 °C)', '7440-36-0', '231-146-5', '121,760', '145 pm (133 pm)', '1,39 ± 0,05 Å', '', 'Kr 4d10 5s2 5p3', '±1', '~1000', 'Jabir Ibn Hayyan', '', '2,05', '630,63 °C', '1 587 °C', 0),
(52, 7, 'Tellure', 'tellure', '2|8|18|18|6', 52, 'Te', '16', '5', 'p', '6,23 g·cm-3 (20 °C)', '13494-80-9', '236-813-4', '127,60', '140 pm (123 pm)', '1,38 ± 0,04 Å', '206', 'Kr 4d10 5s2 5p4', '±2, 4, 6', '1783', '', 'Roumanie', '2,1', '449,51 °C', '988 °C', 0),
(53, 9, 'Iode', 'iode', '2|8|18|18|7', 53, 'I', '17 (VII)', '5', 'p', '11,27 g·l-1 (gaz),\r\n4,93 g·cm-3 (solide, 20 °C)', '14362-44-8 (élément), 7553-56-2 (diiode)', '231-442-4 (diiode)', '126,90447', '140 pm (115 pm)', '1,39 ± 0,03 Å', '215 pm', 'Kr 4d10 5s2 5p5', '±1, 5, 7', '1811', 'Bernard Courtois', 'France', '2,66', '113,7 °C', '184,4 °C', 0),
(54, 10, 'Xénon', 'xenon', '2|8|18|18|8', 54, 'Xe', '18 (VIIIA)', '5', 'p', '5,887 ± 0,009 g·l-1 (gaz),\r\n2,95 g·cm-3 (liquide, -109 °C)', '7440-63-3', '231-172-7', '131,293', '(108 pm)', '1,40 ± 0,09 Å', '216 pm', 'Kr 4d10 5s2 5p6', '0, 1, 2, 4, 6, 8', '1898', '', 'Grande-Bretagne', '2,6', '-111,74 °C', '-108,09 °C', 0),
(55, 1, 'Césium', 'cesium', '2|8|18|18|8|1', 55, 'Cs', '1 (IA)', '6', 's', '1,873 g·cm-3 (20 °C)', '7440-46-2', '231-155-4', '132,9054519', '260 pm (298 pm)', '2,44 ± 0,11 Å', '', '[Xe] 6s1', '1', '1860', '', 'Allemagne', '0,79', '28,44 °C', '671 °C', 0),
(56, 2, 'Baryum', 'baryum', '2|8|18|18|8|2', 56, 'Ba', '2 (IIA)', '6', 's', '3,62 g·cm-3 (20 °C)', '7440-39-3', '231-149-1', '137,327', '215 pm (253 pm)', '2,15 ± 0,11 Å', '', 'Xe 6s2', '2', '1808', 'Carl Wilhelm Scheele', 'Grande-Bretagne', '0,89', '727 °C', '~1 750 °C', 0),
(57, 1, 'Lanthane', 'lanthane', '2|8|18|18|9|2', 57, 'La', '3', '6', 'f', '6,145 g·cm-3 (25 °C)', '7439-91-0', '231-099-0', '138,90547', '195 pm', '2,07 ± 0,08 Å', '', 'Xe 5d1 6s2', '3', '1839', 'Carl Gustaf Mosander', 'Suède', '1,1', '920 °C', '3 464 °C', 0),
(58, 3, 'Cérium', 'cerium', '2|8|18|19|9|2', 58, 'Ce', 'L/A', '6', 'f', '6,770 g·cm-3 (25 °C)', '7440-45-1', '', '140,116', '185 pm', '2,04 ± 0,09 Å', '', 'Xe 4f1 5d1 6s2', '3, 4', '1803', '', 'Suède', '1,12', '799 °C', '3 443 °C', 0),
(59, 3, 'Praséodyme', 'praseodyme', '2|8|18|21|8|2', 59, 'Pr', 'L/A', '6', 'f', '6,773 g·cm-3', '7440-10-0', '', '140,90765', '185 pm (247 pm)', '2,03 ± 0,07 Å', '', 'Xe 4f3 6s2', '3', '1885', '', 'Autruche', '1,13', '931 °C', '3 520 °C', 0),
(60, 3, 'Néodyme', 'neodyme', '2|8|18|22|8|2', 60, 'Nd', 'L/A', '6', 'f', '7,008 g·cm-3 (25 °C)', '7440-00-8', '', '144,242', '185 pm (206 pm)', '2,01 ± 0,06 Å', '', 'Xe 4f4 6s2', '3', '1885', '', 'Autruche', '1,14', '1 016 °C', '3 074 °C', 0),
(61, 3, 'Prométhium', 'promethium', '2|8|18|23|8|2', 61, 'Pm', 'L/A', '6', 'f', '7,264 g·cm-3 (25 °C)', '7440-12-2', '231-121-9', '145', '185 pm (205 pm)', '1,99 Å', '', 'Xe 4f5 6s2', '3', '1985', '', 'États-Unis', '1,13', '1 042 °C', '~3 000 °C', 1),
(62, 3, 'Samarium', 'samarium', '2|8|18|24|8|2', 62, 'Sm', 'L/A', '6', 'f', '7,520 g·cm-3 (25 °C, α)', '7440-19-9', '231-128-7', '150,36', '185 pm (238 pm)', '1,98 ± 0,08 Å', '', 'Xe 4f6 6s2', '3', '1879', '', 'France', '1,17', '1 072 °C', '1 794 °C', 0),
(63, 3, 'Europium', 'europium', '2|8|18|25|8|2', 63, 'Eu', 'L/A', '6', 'f', '5,244 g·cm-3 (25 °C)', '7440-53-1', '231-161-7', '151,964', '185 pm (247 pm)', '1,98 ± 0,06 Å', '', 'Xe 4f7 6s2', '3', '1901', '', 'France', '1,2', '822 °C', '1 596 °C', 0),
(64, 3, 'Gadolinium', 'gadolinium', '2|8|18|25|9|2', 64, 'Gd', 'L/A', '6', 'f', '7,901 g·cm-3 (25 °C)', '7440-54-2', '', '157,25', '188 pm (233 pm)', '1,96 ± 0,06 Å', '', 'Xe 4f7 5d1 6s2', '3', '1880', '', 'Suisse', '1,2', '1 313 °C', '3 273 °C', 0),
(65, 3, 'Terbium', 'terbium', '2|8|18|27|8|2', 65, 'Tb', 'L/A', '6', 'f', '8,230 g·cm-3', '7440-27-9', '', '158,92534', '175 pm (225 pm)', '1,94 ± 0,05 Å', '', 'Xe 4f9 6s2', '3', '1843', '', 'Suède', '1,2', '1 356 °C', '3 230 °C', 0),
(66, 3, 'Dysprosium', 'dysprosium', '2|8|18|28|8|2', 66, 'Dy', 'L/A', '6', 'f', '8,551 g·cm-3 (25 °C)', '7429-91-6', '231-073-9', '160,500', '175 pm (228 pm)', '1,92 ± 0,07 Å', '', 'Xe 4f10 6s2', '3', '1886', '', 'France', '1,22', '1 412 °C', '2 567 °C', 0),
(67, 3, 'Holmium', 'holmium', '2|8|18|29|8|2', 67, 'Ho', 'L/A', '6', 'f', '8,795 g·cm-3 (25 °C)', '7440-60-0', '', '164,93032', '247 pm', '1,92 ± 0,07 Å', '', 'Xe 4f11 6s2', '3', '1878', 'Per Teodor Cleve, Jacques-Louis Soret, Marc Delafontaine', 'Suède, Suisse', '1,23', '1 472 °C', '2 700 °C', 0),
(68, 3, 'Erbium', 'erbium', '2|8|18|30|8|2', 68, 'Er', 'L/A', '6', 'f', '9,066 g·cm-3 (25 °C)', '7440-52-0', '231-160-1', '167,259', '175 pm (226 pm)', '1,89 ± 0,06 Å', '', 'Xe 4f12 6s2', '3', '1842', '', 'Suède', '1,24', '1 529 °C', '2 868 °C', 0),
(69, 3, 'Thulium', 'thulium', '2|8|18|31|8|2', 69, 'Tm', 'L/A', '6', 'f', '9,321 g·cm-3 (25 °C)', '7440-30-4', '', '168,93421', '175 pm (222 pm)', '1,90 ± 0,10 Å', '', 'Xe 4f13 6s2', '3', '1879', '', 'Suède', '1,25', '1 545 °C', '1 950 °C', 0),
(70, 3, 'Ytterbium', 'ytterbium', '2|8|18|32|8|2', 70, 'Yb', 'L/A', '6', 'f', '6,903 g·cm-3 (α)\r\n6,966 g·cm-3 (β)', '7440-64-4', '', '173,04', '175 pm (222 pm)', '1,87 ± 0,08 Å', '', 'Xe 4f14 6s2', '3', '1878', '', 'Suisse', '1,1', '824 °C', '1 196 °C', 0),
(71, 3, 'Lutécium', 'lutecium', '2|8|18|32|9|2', 71, 'Lu', 'L/A', '6', 'd', '9,841 g·cm-3 (25 °C)', '7439-94-3', '', '174,967', '175 pm (217 pm)', '1,87 ± 0,08 Å', '', 'Xe 4f14 5d1 6s2', '3', '1907', '', 'France et Allemagne', '1,27', '1 663 °C', '3 402 °C', 0),
(72, 5, 'Hafnium', 'hafnium', '2|8|18|32|10|2', 72, 'Hf', '4 (IVB)', '6', 'd', '13,281 g·cm-3 (20 °C)', '7440-58-6', '231-166-4', '178,49', '155 pm (208 pm)', '1,75 ± 0,10 Å', '161 pm', 'Xe 4f14 5d2 6s2', '4', '1923', 'George de Hevesy, Dirk Coster', 'Danemark', '1,3', '2 233 °C', '4 603 °C', 0),
(73, 5, 'Tantale', 'tantale', '2|8|18|32|11|2', 73, 'Ta', '5 (VB)', '6', 'd', '16,4 g·cm-3', '7440-25-7', '231-135-5', '180,94788', '145 pm (200 pm)', '1,70 ± 0,08 Å', '', 'Xe 4f14 5d3 6s2', '5', '1802', '', 'Suède', '1,5', '3 017 °C', '5 458 °C', 0),
(74, 5, 'Tungstène', 'tungstene', '2|8|18|32|12|2', 74, 'W', '6', '6', 'd', '19,3 g·cm-3 (20 °C)', '7440-33-7', '231-143-9', '183,84', '135 pm (193 pm)', '1,62 ± 0,07 Å', '137 pm', '[Xe] 4f14 5d4 6s2', '6, 5, 4, 3, 2', '1783', '', 'Espagne', '1,7', '3 422 °C', '5 555 °C', 0),
(75, 5, 'Rhénium', 'rhenium', '2|8|18|32|13|2', 75, 'Re', '7 (VIIB)', '6', 'd', '20,8 g·cm-3 (20 °C)', '7440-15-5', '231-124-5', '186,207', '135 pm (188 pm)', '1,51 ± 0,07 Å', '', 'Xe 4f14 5d5 6s2', '6, 4, 2, -2', '1925', '', 'Allemagne', '1,9', '3 185 °C', '5 596 °C', 0),
(76, 5, 'Osmium', 'osmium', '2|8|18|32|14|2', 76, 'Os', '8 (VIIIB)', '6', 'd', '22,587 g·cm-3', '7440-04-2', '231-114-0', '190,23', '130 pm (185 pm)', '1,44 ± 0,04 Å', '', 'Xe 4f14 5d6 6s2', '± 0,7', '1803', '', 'Grande-Bretagne', '2,2', '3 033 °C', '5 012 °C', 0),
(77, 5, 'Iridium', 'iridium', '2|8|18|32|15|2', 77, 'Ir', '9', '6', 'd', '22,562 g·cm-3 (20 °C)', '7439-88-5', '', '192,217', '135 pm (180 pm)', '1,41 ± 0,06 Å', '', 'Xe 4f14 5d7 6s2', '2, 3, 4, 6', '1803', '', 'Grande-Bretagne et France', '2,2', '2 446 °C', '4 428 °C', 0),
(78, 5, 'Platine', 'platine', '2|8|18|32|17|1', 78, 'Pt', '10', '6', 'd', '21,45 g·cm-3 (20 °C)', '7440-06-4', '231-116-1', '195,084', '135 pm (177 pm)', '1,36 ± 0,05 Å', '175 pm', '[Xe] 4f14 5d9 6s1', '2, 4', '1735', 'Antonio de Ulloa', 'Italie', '2,2', '1 768,2 °C', '3 825 °C', 0),
(79, 5, 'Or', 'or', '2|8|18|32|18|1', 79, 'Au', '11', '6', 'd', '~19,3 g·cm-3 (20 °C)', '7440-57-5', '231-165-9', '196,966569', '135 pm (174 pm)', '1,36 ± 0,06 Å', '166 pm', '[Xe] 4f14 5d10 6s1', '3, 1', 'Antiquité', '', '', '2,4', '1 064,18 °C', '2 856 °C', 0),
(80, 6, 'Mercure', 'mercure', '2|8|18|32|18|2', 80, 'Hg', '12', '6', 'd', '13,546 g·cm-3 (20 °C)', '7439-97-6', '231-106-7', '200,59', '150 pm (171 pm)', '1,32 ± 0,05 Å', '155 pm', '[Xe] 4f14 5d10 6s2', '2, 1', 'Antiquité', '', '', '1,9', '-38,842 °C', '356,62 °C', 0),
(81, 6, 'Thallium', 'thallium', '2|8|18|32|18|3', 81, 'Tl', '13 (IIIA)', '6', 'p', '11,85 g·cm-3 (20 °C)', '7440-28-0', '231-138-1', '204,3833', '190 pm (156 pm)', '1,45 ± 0,07 Å', '196', 'Xe 4f14 5d10 6s2 6p1', '3, 1', '1861', '', 'Grande-Bretagne', '1,8', '304 °C', '1 473 °C', 0),
(82, 6, 'Plomb', 'plomb', '2|8|18|32|18|4', 82, 'Pb', '14', '6', 'p', '11,35 g·cm-3 (20 °C)', '7439-92-1', '231-100-4', '207,2', '180 pm (154 pm)', '1,46 ± 0,05 Å', '202', '[Xe] 4f14 5d10 6s2 6p2', '4, 2', 'Antiquité', '', '', '1,8', '327,46 °C', '1 749 °C', 0),
(83, 6, 'Bismuth', 'bismuth', '2|8|18|32|18|5', 83, 'Bi', '15', '6', 'p', '9,79 g·cm-3 (20 °C)', '7440-69-9', '231-177-4', '208,98040', '160 pm (143 pm)', '1,48 ± 0,04 Å', '152 pm', 'Xe 4f14 5d10 6s2 6p3', '3, 5', '1753', 'Jabir Ibn Hayyan', 'France', '1,9', '271,4 °C', '1 564 °C', 1),
(84, 6, 'Polonium', 'polonium', '2|8|18|32|18|6', 84, 'Po', '', '16 (VIA)', 'p', '9,20 g·cm-3', '7440-08-6', '', '(209)', '190 pm (135 pm)', '1,40 ± 0,04 Å', '', '[Xe] 6s2 4f14 5d10 6p4', '4, 2', '1898', 'Marie Curie, Pierre Curie', 'France', '2', '254 °C', '962 °C', 1),
(85, 7, 'Astate', 'astate', '2|8|18|32|18|7', 85, 'At', '17 (VIIA)', '6', 'p', '', '142364-73-6', '', '210', '', '1,50 Å', '', 'Xe 4f14 5d10 6s2 6p5', '±1, 3, 5, 7', '1940', '', 'États-Unis', '2,2', '302 °C', '', 1),
(86, 10, 'Radon', 'radon', '2|8|18|32|18|8', 86, 'Rn', '18 (VIIIA)', '6', 'p', '9,73 g·l-1 (gaz),\r\n4,4 g·cm-3 (liquide, -62 °C),\r\n4 g·cm-3 (solide)', '10043-92-2', '233-146-0', '(222)', '120 pm', '1,50 Å', '', 'Xe 4f14 5d10 6s2 6p6', '0', '1900', '', 'Allemagne', '2,2', '-71 °C', '-61,7 °C', 1),
(87, 1, 'Francium', 'francium', '2|8|18|32|18|8|1', 87, 'Fr', '1 (IA)', '7', 's', '1 870 kg·m-3', '7440-73-5', '', '(223)', '', '2,60 Å', '', 'Rn 7s1', '1', '1939', '', 'France', '0,7', '27 °C', '', 1),
(88, 2, 'Radium', 'radium', '2|8|18|32|18|8|2', 88, 'Ra', '2 (IIA)', '7', 's', '5 g·cm-3', '7440-14-4', '231-122-4', '226,0254', '215 pm', '2,21 ± 0,02 Å', '', 'Rn 7s2', '2', '1898', 'Pierre Curie, Marie Curie', 'France', '0,9', '696 °C', '1 736,85 °C', 1),
(89, 4, 'Actinium', 'actinium', '2|8|18|32|18|9|2', 89, 'Ac', '3', '7', 'f', '10,07 g·cm-3 (calculée)', '7440-34-8', '', '227', '195 pm', '2,15 Å', '', 'Rn 6d1 7s2', '3', '1899', '', 'France', '1,1', '1 050 °C', '3 198 °C', 1),
(90, 4, 'Thorium', 'thorium', '2|8|18|32|18|10|2', 90, 'Th', 'L/A', '7', 'f', '11,72 g·cm-3', '7440-29-1', '', '232,03806', '179 pm', '2,06 ± 0,06 Å', '', 'Rn 6d2 7s2', '4', '1828', '', 'Suède', '1,3', '1 750 °C', '4 788 °C', 1),
(91, 4, 'Protactinium', 'protactinium', '2|8|18|32|20|9|2', 91, 'Pa', 'L/A', '7', 'f', '15,37 g·cm-3 (calculée)', '7440-13-3', '', '231,03588', '163 pm', '2,00 Å', '', 'Rn 5f2 6d1 7s2', '2, 3, 4, 5', '1913', '', 'Grande-Bretagne', '1,5', '1 572 °C', '4 026,85 °C', 1),
(92, 4, 'Uranium', 'uranium', '2|8|18|32|21|9|2', 92, 'U', 'L/A', '7', 'f', '19,1 g·cm-3', '7440-61-1', '231-170-6', '238,02891', '175 pm', '1,96 ± 0,07 Å', '186', '', '+3, +4, +5, +6', '1789', '', 'Grande-Bretagne', '1,7', '', '', 1),
(93, 4, 'Neptunium', 'neptunium', '2|8|18|32|22|9|2', 93, 'Np', 'L/A', '7', 'f', '20,25 g·cm-3 (20 °C)', '7439-99-8', '', '237', '155 pm', '1,90 ± 0,01 Å', '', 'Rn 5f4 6d1 7s2', '6, 5, 4, 3', '1940', '', 'États-Unis', '1,3', '644 °C', '3 999,85 °C', 1),
(94, 4, 'Plutonium', 'plutonium', '2|8|18|32|24|8|2', 94, 'Pu', 'L/A', '7', 'f', '19 816 kg·m-3', '7440-07-5', '231-117-7', '244,06', '159 pm', '1,87 ± 0,01 Å', '', 'Rn 5f6 7s2', '6, 5, 4, 3', '1940', 'Arthur Wahl, Edwin McMillan, Glenn Theodore Seaborg, Joseph W. Kennedy', 'États-Unis', '1,3', '640 °C', '3 228 °C', 1),
(95, 4, 'Américium', 'americium', '2|8|18|32|25|8|2', 95, 'Am', 'L/A', '7', 'f', '12 g·cm-3', '7440-35-9', '', '241,06', '173 pm', '1,80 ± 0,06 Å', '', 'Rn 5f7 7s2', '6, 5, 4, 3', '1944', '', 'États-Unis', '1,3', '1 176 °C', '2 011 °C', 1),
(96, 4, 'Curium', 'curium', '2|8|18|32|25|9|2', 96, 'Cm', 'L/A', '7', 'f', '13,51 g·cm-3 (calculée)', '7440-51-9', '', '247', '174 pm', '1,69 ± 0,03 Å', '', 'Rn 5f7 6d2 7s2', '3', '1944', '', 'États-Unis', '1,3', '1 345 °C', '3 109,85 °C', 1),
(97, 4, 'Berkélium', 'berkelium', '2|8|18|32|27|8|2', 97, 'Bk', 'L/A', '7', 'f', '(β) 13,25 g·cm-3', '7440-40-6', '', '247', '170 pm', '', '', 'Rn 5f9 7s2', '3, 4', '1949', '', 'États-Unis', '1,3', '996 °C', '', 1),
(98, 4, 'Californium', 'californium', '2|8|18|32|28|8|2', 98, 'Cf', 'L/A', '7', 'f', '15,1 g·cm-3', '7440-71-3', '', '251', '', '', '', 'Rn 5f10 7s2', '2, 3, 4', '1950', 'Albert Ghiorso, Glenn Theodore Seaborg', 'États-Unis', '1,3', '900 °C', '1 469,85 °C', 1),
(99, 4, 'Einsteinium', 'einsteinium', '2|8|18|32|29|8|2', 99, 'Es', 'L/A', '7', 'f', '8,840 g·cm-3', '7429-92-7', '', '252', '', '', '', 'Rn 5f11 7s2', '', '1952', 'Albert Ghiorso', 'États-Unis', '1,3', '859,85 °C', '', 1),
(100, 4, 'Fermium', 'fermium', '2|8|18|32|30|8|2', 100, 'Fm', 'L/A', '7', 'f', '', '7440-72-4', '', '257', '', '', '', 'Rn 5f12 7s2', '', '1952', '', 'États-Unis', '1,3', '1 527 °C', '', 1),
(101, 4, 'Mendélévium', 'mendelevium', '2|8|18|32|31|8|2', 101, 'Md', 'L/A', '7', 'f', '', '7440-11-1', '', '258', '', '', '', 'Rn 5f13 7s2', '2, 3', '1955', '', 'États-Unis', '1,3', '827 °C', '', 1),
(102, 4, 'Nobélium', 'nobelium', '2|8|18|32|32|8|2', 102, 'No', 'L/A', '7', 'f', '', '10028-14-5', '', '259', '', '', '', 'Rn 5f14 7s2', '', '1958', '', 'Suède et États-Unis', '1,3', '', '', 1),
(103, 4, 'Lawrencium', 'lawrencium', '2|8|18|32|32|8|3', 103, 'Lr', 'L/A', '7', 'd', '', '22537-19-5', '', '(262)', '', '', '', '', '', '1961', '', 'États-Unis', '1,3', '', '', 1),
(104, 5, 'Rutherfordium', 'rutherfordium', '2|8|18|32|32|10|2', 104, 'Rf', '4', 'd', '7', '', '53850-36-5', '', '261', '', '', '', 'Rn 5f14 6d2 7s2', '', '1964', '', 'Russie et États-Unis', '', '', '', 1),
(105, 5, 'Dubnium', 'dubnium', '2|8|18|32|32|11|2', 105, 'Db', '5', '7', 'd', '', '53850-35-4', '', '262', '', '', '', 'Rn 5f14 6d3 7s2', '', '1967', '', 'Russie et États-Unis', '', '', '', 1),
(106, 5, 'Seaborgium', 'seaborgium', '2|8|18|32|32|12|2', 106, 'Sg', '6', '7', 'd', '', '54038-81-2', '', '266', '', '', '', '', '', '1974', '', 'Russie et États-Unis', '', '', '', 1),
(107, 5, 'Bohrium', 'bohrium', '2|8|18|32|32|13|2', 107, 'Bh', '7', '7', 'd', '', '54037-14-8', '', '264', '', '', '', '', '', '1981', '', 'Allemagne', '', '', '', 1),
(108, 5, 'Hassium', 'hassium', '2|8|18|32|32|14|2', 108, 'Hs', '8', '7', 'd', '', '54037-57-9', '', '269', '', '', '', '', '', '1984', '', 'Allemagne', '', '', '', 1),
(109, 11, 'Meitnérium', 'meitnerium', '2|8|18|32|32|15|2', 109, 'Mt', '9', '7', 'd', '', '54038-01-6', '', '268', '', '', '', '', '', '1982', '', 'Allemagne', '', '', '', 1),
(110, 11, 'Darmstadtium', 'darmstadtium', '2|8|18|32|32|17|1', 110, 'Ds', '10', '7', 'd', '', '54083-77-1', '', '281', '', '', '', '', '', '1994', '', 'Allemagne', '', '', '', 1),
(111, 11, 'Roentgenium', 'roentgenium', '2|8|18|32|32|18|1', 111, 'Rg', '11', '7', 'd', '', '54386-24-2', '', '280', '', '', '', '', '', '1994', '', 'Allemagne', '', '', '', 1),
(112, 5, 'Copernicium', 'copernicium', '2|8|18|32|32|18|2', 112, 'Cn', '12', '7', 'd', '', '54084-26-3', '', '285', '', '', '', '[Rn] 5f14 6d10 7s2', '', '1996', '', 'Allemagne', '', '', '', 1),
(113, 11, 'Ununtrium', 'ununtrium', '2|8|18|32|32|18|3', 113, 'Uut', '13', '7', 'd', '', '54084-70-7', '', '(284)', '', '', '', '', '', '', '', '', '', '', '', 1),
(114, 11, 'Flérovium', 'flerovium', '2|8|18|32|32|18|4', 114, 'Fl', '14', '7', 'd', '', '54085-16-4', '', '(289)', '', '', '', '', '', '1998', '', '', '', '', '', 1),
(115, 11, 'Ununpentium', 'ununpentium', '2|8|18|32|32|18|5', 115, 'Uup', '15', '7', 'd', '', '54085-64-2', '', '(288)', '', '', '', '', '', '2004', '', '', '', '', '', 1),
(116, 11, 'Livermorium', 'livermorium', '2|8|18|32|32|18|6', 116, 'Lv', '16', '7', 'd', '', '54100-71-9', '', '(293)', '', '', '', '', '', '2000', '', '', '', '', '', 1),
(117, 11, 'Ununseptium', 'ununseptium', '2|8|18|32|32|18|7', 117, 'Uus', '17', '7', 'd', '', '54101-14-3', '', '(291)', '', '', '', '', '', '2010', '', '', '', '', '', 1),
(118, 11, 'Ununoctium', 'ununoctium', '2|8|18|32|32|18|8', 118, 'Uuo', '18', '7', 'd', '13 650 kg·m-3', '54144-19-3', '', '294', '152 pm', '230 pm', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  `slug_categorie` varchar(255) NOT NULL,
  `couleur_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`, `slug_categorie`, `couleur_categorie`) VALUES
(1, 'Alcalins', 'alcalins', 'FF334C '),
(2, 'Alcalino-Terreux', 'alcalino_terreux', 'F1EFAB '),
(3, 'Lanthanides', 'lanthanides', 'F1ABD7 '),
(4, 'Actinides', 'actinides', 'F80A9E'),
(5, 'Métaux de Transition', 'metaux_de_transition', 'F871C5'),
(6, 'Métaux Pauvres', 'metaux_pauvres', 'C898B6'),
(7, 'Métalloïdes', 'metalloides', '878185'),
(8, 'Autres Non Métaux', 'autres_non_metaux', '50D143'),
(9, 'Halogènes', 'halogenes', 'EBF911'),
(10, 'Gaz Nobles', 'gaz_noble', '117EF9'),
(11, 'Non Classés', 'non_classés', 'E1E1E1');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `atome`
--
ALTER TABLE `atome`
  ADD CONSTRAINT `atome_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;