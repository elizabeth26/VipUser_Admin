-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 25 Janvier 2019 à 21:12
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vip2`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `VIP_NUMERO` int(11) NOT NULL,
  `ACTEUR_DATEDEBUT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`VIP_NUMERO`, `ACTEUR_DATEDEBUT`) VALUES
(1, '1992-07-16 00:00:00'),
(2, '1989-04-23 00:00:00'),
(3, '1965-01-30 00:00:00'),
(4, '1984-12-15 00:00:00'),
(5, '1974-05-12 00:00:00'),
(6, '1980-01-01 00:00:00'),
(7, '1990-01-02 00:00:00'),
(8, '1995-05-06 00:00:00'),
(9, '1996-04-05 00:00:00'),
(11, NULL),
(12, '1978-01-01 00:00:00'),
(14, NULL),
(15, '1983-01-02 00:00:00'),
(16, '1986-01-01 00:00:00'),
(17, '1969-01-01 00:00:00'),
(18, '1973-01-01 00:00:00'),
(19, '1998-01-01 00:00:00'),
(20, '0000-00-00 00:00:00'),
(21, '0000-00-00 00:00:00'),
(22, '0000-00-00 00:00:00'),
(23, '0000-00-00 00:00:00'),
(24, '0000-00-00 00:00:00'),
(25, '0000-00-00 00:00:00'),
(26, '0000-00-00 00:00:00'),
(34, '0000-00-00 00:00:00'),
(39, NULL),
(40, '2017-12-25 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `AGENCE_NUMERO` int(11) NOT NULL,
  `AGENCE_NOM` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `agence`
--

INSERT INTO `agence` (`AGENCE_NUMERO`, `AGENCE_NOM`) VALUES
(1, 'Ellamarianne'),
(2, 'Quellebella'),
(3, 'Griffithia'),
(4, 'City Models'),
(5, 'MADISON MODEL');

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `ALBUM_NUMERO` int(11) NOT NULL,
  `MAISONDISQUE_NUMERO` int(11) NOT NULL,
  `ALBUM_TITRE` varchar(20) DEFAULT NULL,
  `ALBUM_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `album`
--

INSERT INTO `album` (`ALBUM_NUMERO`, `MAISONDISQUE_NUMERO`, `ALBUM_TITRE`, `ALBUM_DATE`) VALUES
(1, 5, 'Quelqu\'un m\'a dit', '2002-01-17 00:00:00'),
(2, 6, 'Alors Regarde', '2006-01-23 00:00:00'),
(3, 6, 'Entre deux', '2006-01-23 00:00:00'),
(4, 6, 'Au café des délices', '2000-01-24 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `apouragence`
--

CREATE TABLE `apouragence` (
  `AGENCE_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `apouragence`
--

INSERT INTO `apouragence` (`AGENCE_NUMERO`, `VIP_NUMERO`) VALUES
(5, 19),
(4, 29);

-- --------------------------------------------------------

--
-- Structure de la table `apoursujet`
--

CREATE TABLE `apoursujet` (
  `ARTICLE_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `apoursujet`
--

INSERT INTO `apoursujet` (`ARTICLE_NUMERO`, `VIP_NUMERO`) VALUES
(1, 34);

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `ARTICLE_NUMERO` int(11) NOT NULL,
  `EXEMPLAIRE_NUMERO` int(11) DEFAULT NULL,
  `ARTICLE_TITRE` varchar(100) DEFAULT NULL,
  `ARTICLE_NUMEROPAGEDEBUT` int(11) DEFAULT NULL,
  `ARTICLE_RESUME` varchar(800) DEFAULT NULL,
  `ARTICLE_DATE_INSERT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`ARTICLE_NUMERO`, `EXEMPLAIRE_NUMERO`, `ARTICLE_TITRE`, `ARTICLE_NUMEROPAGEDEBUT`, `ARTICLE_RESUME`, `ARTICLE_DATE_INSERT`) VALUES
(1, 1, 'A la sauce Tarantino!', 12, 'La jolie Mélanie Laurent, rendue célèbre par le film \" Je vais bien ne t\'en fais pas\" - pour lequel elle a remporté le César du meilleur espoir féminin - entre définitivement dans la cour des grandes. Après l\'évocation de plusieurs noms, parmi lesquels celui de Louise Bourgoin, c\'est finalement la petite blonde qui a en effet été choisie par le génial Quentin Tarantino ( Reservoir Dogs, Pulp Fiction, Kill Bill), pour rejoindre l\'équipe de son prochain long métrage Inglorious Bastards. Mélanie Laurent héritera du rôle féminin principal, et donnera ainsi la réplique à  Brad Pitt en personne, dans ce film dont l\'intrigue se situe en Europe pendant la seconde guerre mondiale.', '2010-01-13');

-- --------------------------------------------------------

--
-- Structure de la table `chanteur`
--

CREATE TABLE `chanteur` (
  `VIP_NUMERO` int(11) NOT NULL,
  `CHANTEUR_SPECIALITE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chanteur`
--

INSERT INTO `chanteur` (`VIP_NUMERO`, `CHANTEUR_SPECIALITE`) VALUES
(12, 'Romantique'),
(29, 'Sans voix');

-- --------------------------------------------------------

--
-- Structure de la table `comporte`
--

CREATE TABLE `comporte` (
  `ARTICLE_NUMERO` int(11) NOT NULL,
  `PHOTO_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `comporte`
--

INSERT INTO `comporte` (`ARTICLE_NUMERO`, `PHOTO_NUMERO`, `VIP_NUMERO`) VALUES
(1, 1, 34);

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

CREATE TABLE `composer` (
  `ALBUM_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `composer`
--

INSERT INTO `composer` (`ALBUM_NUMERO`, `VIP_NUMERO`) VALUES
(2, 12),
(3, 12),
(4, 12),
(1, 29);

-- --------------------------------------------------------

--
-- Structure de la table `couturier`
--

CREATE TABLE `couturier` (
  `VIP_NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `couturier`
--

INSERT INTO `couturier` (`VIP_NUMERO`) VALUES
(35);

-- --------------------------------------------------------

--
-- Structure de la table `defile`
--

CREATE TABLE `defile` (
  `DEFILE_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  `DEFILE_LIEU` varchar(20) DEFAULT NULL,
  `DEFILE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `defile`
--

INSERT INTO `defile` (`DEFILE_NUMERO`, `VIP_NUMERO`, `DEFILE_LIEU`, `DEFILE_DATE`) VALUES
(1, 35, 'PARIS', '2000-01-20 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `defiledans`
--

CREATE TABLE `defiledans` (
  `DEFILE_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `defiledans`
--

INSERT INTO `defiledans` (`DEFILE_NUMERO`, `VIP_NUMERO`) VALUES
(1, 19),
(1, 29);

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `EXEMPLAIRE_NUMERO` int(11) NOT NULL,
  `EXEMPLAIRE_DATEPUBLICATION` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `exemplaire`
--

INSERT INTO `exemplaire` (`EXEMPLAIRE_NUMERO`, `EXEMPLAIRE_DATEPUBLICATION`) VALUES
(1, '2001-01-05 00:00:00'),
(2, '2000-02-06 00:00:00'),
(3, '1999-03-05 00:00:00'),
(4, '1999-04-05 00:00:00'),
(5, '1990-05-04 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `film_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) DEFAULT NULL,
  `FILM_TITRE` varchar(80) DEFAULT NULL,
  `FILM_DATEREALISATION` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`film_NUMERO`, `VIP_NUMERO`, `FILM_TITRE`, `FILM_DATEREALISATION`) VALUES
(1, NULL, 'Babel', '2006-05-01 00:00:00'),
(2, NULL, 'Chad Schmidt', '2006-07-01 00:00:00'),
(3, 28, 'Mr. and Mrs. Smith', '2005-07-01 00:00:00'),
(4, NULL, 'Ocean\'s Twelve', '2004-03-12 00:00:00'),
(5, NULL, 'Troy', '2004-10-30 00:00:00'),
(6, NULL, 'Confessions of a Dangerous Mind', '2002-09-29 00:00:00'),
(7, NULL, 'Et au milieu coule une rivière', '1992-06-20 00:00:00'),
(8, 13, 'Astérix et Obélix contre César', '1999-02-03 00:00:00'),
(9, 30, 'Les Ames fortes', '2001-01-20 00:00:00'),
(10, 31, 'Rue des plaisirs', '2002-02-13 00:00:00'),
(11, 33, 'Le Coup de sirocco', '1979-04-18 00:00:00'),
(12, 40, 'L\'Homme fidèle', '2018-10-17 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `FILM_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  `ROLE_NOM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `joue`
--

INSERT INTO `joue` (`FILM_NUMERO`, `VIP_NUMERO`, `ROLE_NOM`) VALUES
(1, 24, NULL),
(2, 24, NULL),
(3, 24, NULL),
(3, 26, NULL),
(4, 24, NULL),
(5, 24, NULL),
(6, 24, NULL),
(7, 24, NULL),
(8, 11, 'Obélix'),
(8, 19, 'Falbala'),
(9, 19, 'rôle principal'),
(10, 19, 'Marion, une prostituée'),
(11, 12, 'Le plus beau'),
(12, 19, 'Marianne'),
(12, 40, 'Abel');

-- --------------------------------------------------------

--
-- Structure de la table `liaison`
--

CREATE TABLE `liaison` (
  `VIP_NUMERO` int(11) NOT NULL,
  `VIP_VIP_NUMERO` int(11) NOT NULL,
  `DATE_EVENEMENT` datetime NOT NULL,
  `LIAISON_MOTIFFIN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `liaison`
--

INSERT INTO `liaison` (`VIP_NUMERO`, `VIP_VIP_NUMERO`, `DATE_EVENEMENT`, `LIAISON_MOTIFFIN`) VALUES
(19, 34, '2002-01-04 00:00:00', 'Tromperie'),
(24, 26, '2006-02-01 00:00:00', 'aucune raison'),
(24, 26, '2009-12-25 00:00:00', 'Ne passe pas au S4'),
(26, 27, '2006-02-01 00:00:00', 'Trop beau'),
(26, 27, '2009-12-29 00:00:00', 'A trouvé mieux'),
(34, 11, '2010-01-03 00:00:00', 'Ne se suportaient plus');

-- --------------------------------------------------------

--
-- Structure de la table `maisondisque`
--

CREATE TABLE `maisondisque` (
  `MAISONDISQUE_NUMERO` int(11) NOT NULL,
  `MAISONDISQUE_NOM` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `maisondisque`
--

INSERT INTO `maisondisque` (`MAISONDISQUE_NUMERO`, `MAISONDISQUE_NOM`) VALUES
(1, 'Pomme Music'),
(2, 'Sony France'),
(3, 'Virgin'),
(4, 'Sony France'),
(5, 'Naïve'),
(6, 'Bmg France');

-- --------------------------------------------------------

--
-- Structure de la table `mannequin`
--

CREATE TABLE `mannequin` (
  `VIP_NUMERO` int(11) NOT NULL,
  `MANNEQUIN_TAILLE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mannequin`
--

INSERT INTO `mannequin` (`VIP_NUMERO`, `MANNEQUIN_TAILLE`) VALUES
(19, 80),
(29, 2);

-- --------------------------------------------------------

--
-- Structure de la table `mariage`
--

CREATE TABLE `mariage` (
  `VIP_NUMERO` int(11) NOT NULL,
  `VIP_VIP_NUMERO` int(11) NOT NULL,
  `DATE_EVENEMENT` datetime NOT NULL,
  `MARIAGE_LIEU` varchar(20) DEFAULT NULL,
  `MARIAGE_FIN` datetime DEFAULT NULL,
  `MARIAGE_MOTIFFIN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mariage`
--

INSERT INTO `mariage` (`VIP_NUMERO`, `VIP_VIP_NUMERO`, `DATE_EVENEMENT`, `MARIAGE_LIEU`, `MARIAGE_FIN`, `MARIAGE_MOTIFFIN`) VALUES
(1, 2, '2008-12-30 00:00:00', 'Brive La Gaillarde', '2016-11-11 00:00:00', 'Non admis en LP DWBD'),
(3, 34, '2010-01-01 00:00:00', 'IUT du LIMOUSIN', '2010-01-02 00:00:00', 'Toujours ivre'),
(19, 36, '2001-01-27 00:00:00', 'Paris', '2005-01-27 00:00:00', 'Séparation'),
(19, 40, '2016-12-05 00:00:00', 'Bordeaux', NULL, NULL),
(24, 25, '2001-01-02 00:00:00', 'Las Vegas', '2002-01-02 00:00:00', 'Trop beau'),
(24, 25, '2009-12-01 00:00:00', 'Las Vegas', '2009-12-23 00:00:00', 'Trop beau');

--
-- Déclencheurs `mariage`
--
DELIMITER $$
CREATE TRIGGER `verifvip` BEFORE INSERT ON `mariage` FOR EACH ROW begin
      DECLARE nb SMALLINT;
        if (new.vip_numero=new.vip_vip_numero)then
          begin
              select * into nb from t1;
            end;
        end if;
      end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `nationalite`
--

CREATE TABLE `nationalite` (
  `NATIONALITE_NUMERO` int(11) NOT NULL,
  `NATIONALITE_NOM` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `nationalite`
--

INSERT INTO `nationalite` (`NATIONALITE_NUMERO`, `NATIONALITE_NOM`) VALUES
(1, 'Américaine'),
(2, 'Française'),
(3, 'Allemande'),
(4, 'Italienne'),
(5, 'Algérienne'),
(6, 'Irlandaise'),
(7, 'Chilienne'),
(8, 'Sud Africaine');

-- --------------------------------------------------------

--
-- Structure de la table `parametres`
--

CREATE TABLE `parametres` (
  `LOGIN` varchar(20) NOT NULL,
  `PASSWD` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `parametres`
--

INSERT INTO `parametres` (`LOGIN`, `PASSWD`) VALUES
('admin', 'fcdda9d67ad2ffd96a0ed44ccb967e7b31747d54');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `PHOTO_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL DEFAULT '0',
  `PHOTO_SUJET` varchar(220) DEFAULT NULL,
  `PHOTO_COMMENTAIRE` varchar(250) DEFAULT NULL,
  `PHOTO_ADRESSE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photo`
--

INSERT INTO `photo` (`PHOTO_NUMERO`, `VIP_NUMERO`, `PHOTO_SUJET`, `PHOTO_COMMENTAIRE`, `PHOTO_ADRESSE`) VALUES
(1, 1, '30/01/10', 'Cinevile Studios', 'smith.jpg'),
(1, 2, '14/03/10', 'Tournage de Cannes 9', 'caunes.jpg'),
(1, 3, '14/02/12', 'Dernier Film de Wood', 'allen.jpg'),
(1, 4, '20/06/16', 'Maison d\'Ophélie', 'barr.jpg'),
(1, 5, '10/05/15', 'Fête des fous', 'berry2.jpg'),
(1, 6, 'Juste avant de rendre le projet tut', 'grande solitude en fin de S3', 'bonnaire.jpg'),
(1, 7, 'Vient de rentrer au S4', 'Pendant le S4 en cours de NODE.JS', 'bouchez.jpg'),
(1, 8, 'Essaye de compiler un programme en C', 'Premier cours du S1 avec TM', 'branagh.jpg'),
(1, 9, 'Devant la machine à café', 'Récupère un jeton jaune ', 'canet.jpg'),
(1, 10, 'Première promo du département info', 'En Cobol', 'chabrol.jpg'),
(1, 11, 'A démissionné après le premier cours de math', 'A jeun, il était 8 heures du mat', 'depardieux.jpg'),
(1, 12, 'Photo type identite', 'Son plus beau profil', 'bruel.jpg'),
(1, 13, 'Semaine des partiels', 'Sort du partiel de Java', 'zidi.jpg'),
(1, 14, 'Vient de découvrir la méthode à Gilles', 'Il vient d\'accéder à la zone libre pour la première fois', 'caprio.jpg'),
(1, 15, 'Pendant la nuit de l\'info', 'Chef de projet', 'boyle.jpg'),
(1, 16, 'Avec AB au S1', 'Découvre SQL au S1', 'ledoyen.jpg'),
(1, 17, 'Au secrétariat du département', 'Essaye de justifier une absence', 'burton.jpg'),
(1, 18, 'découvre l\'emploi du temps de la semaine 23', 'Réalise qu\'il sort tout les soirs à 19h30', 'depp.jpg'),
(1, 19, 'La plus belle étudiante de la promo', '♥', 'casta.jpg'),
(1, 20, '☺', 'Toute la promo était à ses pieds', 'bellucci.jpg'),
(1, 21, 'Juste avant d\'être admise en LP ARBD', 'Le réseau a toujours était son \"truc\"', 'binoche.jpg'),
(1, 22, 'Découvre les feutres à tableau blanc de l\'IUT', 'Ne supporte pas les cours de Math', 'berry.jpg'),
(1, 23, 'Sort d\'un cours de PHP', 'Trouve que le cours est beaucoup trop rapide', 'barrymore.jpg'),
(1, 24, 'Le seul garçon de la promo', 'La seule promo composée d\'un seul garçon', 'brad.jpg'),
(1, 25, 'En cours', 'de BD', 'aniston.jpg'),
(1, 26, 'En cours avec LB', 'Au labo d\'Anglais de l\'IUT', 'jolie.jpg'),
(1, 27, 'Envisage de démissionner du département info', 'A la nouvelle cafet', 'farrell.jpg'),
(1, 28, 'Au tout début du S1 au département info', 'Sort du cours de math de TB', 'liman.jpg'),
(1, 29, 'Photo type identite', 'En retard à un cours de comm', 'bruni.jpg'),
(1, 30, 'Son plus beau profil', 'Son plus beau profil', 'ruiz.jpg'),
(1, 31, 'Son plus beau profil', 'Son plus beau profil', 'leconte.jpg'),
(1, 32, 'Avec SR', 'Pendant un TD de gestion', 'ford.jpg'),
(1, 33, 'Pendant le tournage coup de sirocco', 'photo ancienne', 'arcady.jpg'),
(1, 34, 'Photo identité', 'Devant le bureau du chef', 'laurent.jpg'),
(1, 35, 'Photo type identite', 'Convoqué dans le bureau du chef', 'saintlaurent.jpg'),
(1, 36, 'Photo type identite', 'Son plus beau profil', 'sednaoui.jpg'),
(1, 39, 'Devant l\'IUT du LIMOUSIN', 'Viens de garer sa voiture sur le trottoir', '04.jpg'),
(1, 40, 'Photo d\'identité', 'Photo officielle', 'Garrel1.jpg'),
(2, 1, 'A l\'IUT du Limousin', 'Dans le couloir', 'will_smith.jpg'),
(2, 19, 'Dans le Film ERRANCE', 'Dans le rôle de LOU', 'casta2.jpg'),
(2, 34, 'Pendant le tournage du concert', 'Espère être admis en LP DWBD ', 'laurent2.jpg'),
(2, 40, 'Abel', 'Abel', 'Garrel2.jpg'),
(3, 1, 'A l\'IUT du LIMOUSIN', 'Convoqué dans le bureau du chef', 'will_smith2.jpg'),
(3, 19, ' En conmemoracion al Dia de la Bastilla les traemos a la hermosa francesita Laetitia Casta, modelo de Victoriaa€™s Secret.', 'Las curvas de Laetitia rompia el estereotipo de las modelos flacas y huesudas.', 'casta3.jpg'),
(4, 1, 'A l\'iut du LIMOUSIN', 'Pendant un cours de BD', 'will_smith3.jpg'),
(4, 19, 'Caricature', 'Son plus beau sourire', 'casta4.jpg'),
(5, 19, 'A l\'IUT du LIMOUSIN', 'Elle découvre l\'emploi du temps de la semaine 20', 'casta5.jpg'),
(6, 19, 'A l\'IUT du LIMOUSIN', 'Juste avant de partir en stage de seconde année', 'casta6.jpg'),
(7, 19, 'Marianne', 'Marianne', 'casta7.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `VIP_NUMERO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`VIP_NUMERO`) VALUES
(3),
(10),
(13),
(28),
(30),
(31),
(33),
(34),
(40);

-- --------------------------------------------------------

--
-- Structure de la table `vip`
--

CREATE TABLE `vip` (
  `VIP_NUMERO` int(11) NOT NULL,
  `NATIONALITE_NUMERO` int(11) NOT NULL,
  `VIP_NOM` varchar(20) DEFAULT NULL,
  `VIP_PRENOM` varchar(20) DEFAULT NULL,
  `VIP_SEXE` varchar(20) DEFAULT NULL,
  `VIP_NAISSANCE` datetime DEFAULT NULL,
  `VIP_TEXTE` varchar(2500) DEFAULT NULL,
  `VIP_DATE_INSERTION` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vip`
--

INSERT INTO `vip` (`VIP_NUMERO`, `NATIONALITE_NUMERO`, `VIP_NOM`, `VIP_PRENOM`, `VIP_SEXE`, `VIP_NAISSANCE`, `VIP_TEXTE`, `VIP_DATE_INSERTION`) VALUES
(1, 1, 'SMITH', 'Will', 'M', '1968-09-25 00:00:00', 'Will Smith se destine à  une carrière musicale lorsque, en 1989, il fait la rencontre de Benny Medina, productrice exécutive pour la Warner, qui lui confie le rôle principal de la série télévisée Le Prince de Bel-Air. Un feuilleton qui le rend extrêmement populaire et qui lui permet de débuter une carrière cinématographique. En 1992, il joue dans la comédie Made in America puis se distingue dans le drame Six degrés de séparation.', '2009-12-29 14:30:54'),
(2, 2, 'DE CAUNES', 'Antoine', 'M', '1953-09-14 00:00:00', 'Fils de Georges de Caunes et de Jaqueline Jouber, père de l\'actrice Emma de Caunes. ', '2009-12-29 14:30:54'),
(3, 1, 'ALLEN', 'Woody', 'M', '1935-03-24 00:00:00', ' A l\'âge de seize ans, Woody Allen envoie des histoires drôles à  différents chroniqueurs de journaux. Après avoir écrit des sketches pour la télévision et d\'innombrables chroniques pour des magazines comme Playboy, il décide en 1961 de monter sur les planches. Il arpente ainsi les cabarets et les plateaux de télévision.', '2009-12-29 14:30:54'),
(4, 3, 'BARR', 'Jean Marc', 'M', '1960-09-27 00:00:00', ' Fils d\'un père américain, héros de l\'US Air Force, et d\'une mère francaise, Jean-Marc Barr passe une partie de son enfance en Allemagne, puis aux Etats-Unis, avant de rejoindre la France en 1968. En 1974, la famille s\'installe à  San Diego, Jean-Marc Barr y reçoit une éducation stricte en vue de son incorporation dans l\'US Air Force. Refusant d\'emprunter la même voie que son père, il part pour Londres en 1982 étudier le théâtre. Il y fait la connaissance de sa future femme, une pianiste d\'origine yougoslave. De retour en France, il fait ses débuts à  l\'écran dans The Frog prince (1984) et joue sous la direction de John Boorman dans La Guerre à  sept ans (1987).', '2009-12-29 14:30:54'),
(5, 2, 'BERRY', 'Richard', 'M', '1950-07-31 00:00:00', ' Dès l\'âge de 16 ans, Richard Berry développe un intérêt particulier pour le théâtre. Il rejoint une troupe de comédiens amateurs, et se passionne pour les classiques de Racine, Corneille, Molière et Beaumarchais. Après un premier échec au concours d\'entrée du Conservatoire, il y est finalement admis en 1969. A sa sortie, il intègre la Comédie-Française et y restera sept ans. ', '2009-12-29 14:30:54'),
(6, 2, 'BONNAIRE', 'Sandrine', 'F', '1967-03-31 00:00:00', ' Septième d\'une famille de dix enfants, Sandrine Bonnaire débute en 1982 comme figurante dans La Boum 2 et Les Sous-doués en vacances. Alors qu\'elle accompagne sa soeur à  un casting, elle est choisie par Maurice Pialat, pour un projet qui n\'aboutira pas, Les Meurtrières. Mais le cinéaste en fait l\'héroïne du film auquel il songe depuis dix ans, A nos amours, pour lequel l\'actrice obtient le César du Meilleur jeune espoir féminin. Par l\'intensité qui se dégage de son jeu spontané, Sandrine Bonnaire fait, à  16 ans, une irruption spectaculaire dans le cinéma français.', '2009-12-29 14:30:54'),
(7, 2, 'BOUCHEZ', 'Elodie', 'F', '1973-04-05 00:00:00', ' Elodie Bouchez étudie le théâtre à  l\'Université. D\'abord danseuse, elle commence sa carrière cinématographique par des rôles sulfureux dans Stan the Flasher de Serge Gainsbourg et Le Cahier volé de Christine Lipinska, dans lequel elle joue son premier grand rôle.', '2009-12-29 14:30:54'),
(8, 6, 'BRANAGH', 'Kenneth', 'M', '1960-12-10 00:00:00', ' Kenneth Branagh est né le 10 décembre 1960 à  Belfast, en Irlande du Nord, le deuxième de trois enfants (entre son frère Bill et sa soeur Joyce) dans une famille modeste protestante (son père est charpentier). Pour éviter les conflits engendrés par la guerre civile, ils déménagent à  Reading, en Angleterre, alors qu\'il est à  peine âgé de 9 ans. Dans sa jeunesse, il montre d\'abord des talents de sportif, dirigeant même l\'équipe de football et de rugby de son école. Il s\'intéresse aussi au journalisme, écrivant des critiques de livres pour enfants pour le journal local. Mais, dès son adolescence, il se tourne vers le théâtre et prend conscience de sa vocation d\'acteur en voyant, à  15 ans, Derek Jacobi jouer Hamlet.', '2009-12-29 14:30:54'),
(9, 2, 'CANET', 'Guillaume', 'M', '1973-04-10 00:00:00', ' Passionné d\'équitation, Guillaume Canet voit sa carrière de jockey interrompue par un accident. Se tournant vers l\'art dramatique, il suit une formation au Cours Florent et se fait remarquer au théâtre dans la pièce La Ville dont le Prince est un enfant d\'Henry de Montherlant, qu\'il interprète aux côtés de Christophe Malavoy.', '2009-12-29 14:30:54'),
(10, 2, 'CHABROL', 'Claude', 'M', '1930-06-24 00:00:00', ' Après avoir tenu un ciné-club dans la Creuse pendant la guerre, Claude Chabrol, de retour à  Paris, suit des études de lettres puis de pharmacie, mais fréquente surtout les cinémas de la ville à  raison de plusieurs séances par jour. Il y rencontre de jeunes cinéphiles passionnés avec qui il participe à  l\'aventure des Cahiers du cinéma de 1952 à  1957, et fait bientôt la connaissance du romancier Paul Gégauff, dont l\'influence le détourne de son éducation bourgeoise. Marié très tôt, il est attaché de presse à  la Fox avant de profiter d\'un héritage de son épouse pour produire Le Coup du berger (1957) de  Rivette et réaliser Le Beau Serge (1958), son premier long métrage. En grande partie autobiographique, ce film-clé de la Nouvelle vague est un beau succès public et critique et remporte le prix Jean Vigo.', '2009-12-29 14:30:54'),
(11, 2, 'DEPARDIEU', 'Gérard', 'M', '1948-11-27 00:00:00', 'Qu\'il est loin le temps où Gérard Depardieu, adolescent, flirtait avec la délinquance. Aujourd\'hui, \"Depardiou\", comme disent les Américains, fait figure de poids lourds du cinéma, de boulimique de la pellicule. Depuis Les Valseuses en 1974, le public a adopté ce personnage hors du commun, vivant dans les excès. Propriétaire d\'un vignoble, il n\'oublie pas de goà»ter sa production; ses chutes en moto sont régulièrement à  la une, bref ses moindres faits et gestes sont repris parce que Depardieu est tout simplement une STAR ! Un rang qu\'il a obtenu en tournant avec les plus grands cinéastes et en jouant aussi bien des rôles comiques que tragiques. Au cours de ses trente ans de carrière, on ne compte plus ses succès, Le Dernier Métro, Cyrano de Bergerac, La Chèvre... Seules ses apparitions aux Etats-Unis n\'ont pas été aussi flamboyantes avec notamment l\'échec du film 1492 de Ridley Scott. Son couple avec Carole Bouquet finit d\'entretenir cette légende vivante.', '2009-12-29 14:30:54'),
(12, 2, 'Bruel', 'Patrick', 'M', '1959-05-14 00:00:00', 'C\'est à Tlemcen, en Algérie, près d\'Oran, que Patrick Benguigui naît le 14 mai 1959. Sa mère Augusta, professeur de français, est divorcée de son mari. Patrick grandira sans père, et cette absence le marquera à vie. En 1962, les Benguigui rejoignent la France et s\'installent en banlieue parisienne, à Argenteuil dans le val d\'Oise. Puis ils s\'installent à Paris dans le 13 ème arrondissement. Deux demi/frères naîtront : David (qui vivra plus tard au côté d\'Emmanuelle Béart), et Fabrice Moreau. Le petit Patrick est un enfant sportif. Il adore le football et rêve de devenir footballeur professionnel. Encore aujourd\'hui, il ne manque pas un match gala avec le Variétés Club de France ou en spectateur avec ses amis. Outre le football, l\'adolescence de Patrick est occupée par la musique, avec une double passion pour la chanson française (Brel, Brassens,...) et le rock anglo/saxon (Eric Clapton, Hendrix, Jeff Beck,...).', '2008-01-05 00:00:00'),
(13, 2, 'ZIDI', 'Claude', 'M', '1934-07-25 00:00:00', ' Après des études à  L\'Ecole Louis-Lumière, Claude Zidi débute sa carrière en tant que chef-opérateur (sur La Baie des anges de Jacques Demy ou La Ligne de démarcation de Claude Chabrol) puis se lance dans la réalisation en 1971. Il se spécialise d\'emblée dans la comédie, ses quatre premiers films donnant la vedette à  la troupe comique des Charlots (Les Bidasses en folie, Les Fous du stade, Le Grand bazar et Les Bidasses s\'en vont en guerre).', '2009-12-29 14:30:54'),
(14, 1, 'DI CAPRIO', 'Léonardo', 'M', '1974-11-11 00:00:00', ' Né d\'un père italien et d\'une mère allemande favorisant au mieux ses aptitudes artistiques, Leonardo DiCaprio suit des cours de comédie dès l\'école primaire. Auditionnant pour la première fois en 1988, il commence par tourner des spots publicitaires puis obtient très vite quelques petits rôles à  la télévision (Les Nouvelles aventures de Lassie, Santa Barbara) avant de se faire remarquer dans la série Quoi de neuf, docteur ? en 1991. Mais il est surtout intéressé par le cinéma, et après un premier film d\'horreur (Critters 3), Leonardo DiCaprio est choisi parmi quatre cents candidats pour jouer le beau-fils maltraité de Robert De Niro dans Blessures secrètes (1993).', '2009-12-29 14:30:54'),
(15, 1, 'BOYLE', 'Danny', 'M', '1956-10-20 00:00:00', ' Danny Boyle commence sa carrière au théâtre, à  la \"Join Stock Theatre Compagny\" jusqu\'en 1982. Après être devenu directeur adjoint du \"Royal Court Theatre Compagny\" en 1985, il met en scène parallèlement cinq pièces de théâtre pour la Royal Shakspeare Compagny, et se voit récompenser par de nombreux prix.', '2009-12-29 14:30:54'),
(16, 2, 'LEDOYEN', 'Virginie', 'F', '1976-11-15 00:00:00', ' Enfant, Virginie Ledoyen apparaît dans des spots publicitaires, notamment pour les marques Buitoni et Air Inter, et dans le vidéo clip L\'Aziza de Daniel Balavoine. A dix ans, elle débute au cinéma dans un film italien intitulé Les Exploits d\'un jeune Don Juan (1987). C\'est Philomene Esposito qui lui offre son premier grand rôle en 1991 avec Mima.', '2009-12-29 14:30:54'),
(17, 1, 'BURTON', 'Tim', 'M', '1958-08-25 00:00:00', ' Après des études à  la California Institute of the Arts, Tim Burton débute chez Disney dans les années 70, collaborant à  l\'animation de plusieurs dessins animés, dont Rox et Rouky. Après cette expérience, il débute dans la réalisation avec deux courts métrages, l\'un d\'animation (Vincent; 1982), l\'autre de facture classique, Frankenweenie (1984), parodie revendiquée de Frankenstein et des films de la firme Hammer.', '2009-12-29 14:30:54'),
(18, 1, 'DEPP', 'Johny', 'M', '1963-06-09 00:00:00', ' Fils d\'un ingénieur et d\'une femme de ménage, Johnny Depp se passionne pour la musique en assistant à  un spectacle de gospel. Il rejoint alors le groupe The Flame, qui devient The Kids, et fait la première partie de la tournée d\'Iggy Pop. Deux ans plus tard, les musiciens se rendent à  Los Angeles, mais la formation ne remporte pas le succès escompté. C\'est à  cette période que Johnny Depp fait la connaissance de Nicolas Cage grâce à  la maquilleuse Lori Allison. Ce dernier organise une rencontre avec son agent, une rencontre qui débouchera sur un petit rôle dans Les Griffes de la nuit (1984) de Wes Craven.', '2009-12-29 14:30:54'),
(19, 2, 'CASTA', 'Laetitia', 'F', '1978-05-11 00:00:00', ' Née en Normandie et découverte à  15 ans sur une plage Corse, Laetitia Casta débute une carrière de mannequin. En 1998, elle fait ses premiers pas au cinéma avec le rôle de Falbala dont est amoureux Obélix alias Gérard Depardieu dans Astérix et Obélix contre César.', '2009-12-29 14:30:54'),
(20, 4, 'BELLUCCI', 'Monica', 'F', '1968-09-30 00:00:00', 'Mannequin et star de cinéma, Monica Bellucci monopolise les unes de magazines. Un destin fantastique pour cette magnifique Italienne, née dans le petit village de Citta di Castello. Uniquement envisagée pour financer ses études de droit, sa carrière de mannequin s\'envole quand elle signe avec l\'agence mondiale Elite. Avec l\'argent gagné, elle prend des cours de théâtre et apparaît dans plusieurs films italiens, dès 1990. Rapidement,  elle sort des frontières de l\'Italie en intégrant le casting de Dracula, réalisé par Coppola.', '2009-12-29 14:30:54'),
(21, 2, 'BINOCHE', 'Juliette', 'F', '1964-03-09 00:00:00', 'Contrairement à  d\'autres stars, Juliette Binoche n\'apparaît que très peu à  la une des magazines people. Pour faire parler d\'elle, l\'actrice n\'utilise que son métier. Juliette Binoche a débuté au théâtre à  16 ans avec des classiques comme Le Malade imaginaire. Encouragée par cette expérience, elle décide de suivre une formation au Conservatoire. Après quelques rôles secondaires au cinéma, elle obtient enfin sa chance dans Rendez-vous, de Téchiné (1985). A partir de ce moment, Juliette se concentre sur des personnages difficiles à  jouer dans des films d\'auteur (Les amants du Pont-Neuf). Trois couleur : Bleu marque sa reconnaissance, avec le César de la meilleure actrice. Juliette se tourne alors vers des films plus grand public comme Le Hussard sur le toit et vers l\'étranger avec Le Patient Anglais', '2009-12-29 14:30:54'),
(22, 1, 'BERRY ', 'Halle', 'F', '1966-08-14 00:00:00', 'Les flashs commencent à  crépiter pour Halle Berry dès ses 17 ans. Elle remporte le prix de Miss Teen All-American et participe aux finales de Miss USA et Miss Monde ! Avec ses titres, elle commence une carrière de mannequin tout en prenant des cours de comédie. Ses premiers pas d\'actrice, Halle les effectue par le biais de la télévision dans Côte Ouest en 1991. La même année, Spike Lee lui propose de jouer un petit rôle dans Jungle Fever. Fort de ce début, Halle Berry continue tranquillement sa conquête d\'Hollywood en faisant des apparitions dans Le dernier Samaritain ou Ultime Décision, sa consécration médiatique intervient avec X-Men. Grâce à  ce film, sa carrière prend une autre dimension. Elle recevra même l\'Oscar de la meilleure actrice pour son rôle dans A l\'ombre de la haine. Sensuelle, Halle, en plus de son talent, sait aussi jouer de ses formes généreuses pour \"reprendre\" avec brio le rôle mythique d\'Ursula Andress en maillot de bain dans le James Bond Meurs un autre jour.', '2009-12-29 14:30:54'),
(23, 1, 'BARRYMORE', 'Drew', 'F', '1975-02-22 00:00:00', 'Dans la famille \"je demande l\'apparition la plus précoce devant des caméras\", je trouve Drew Barrymore avec une publicité TV à  moins d\'un an ! Née d\'un père acteur, elle enchaîne quelques rôles jusqu\'à  ce que son parrain Steven Spielberg lui offre, pour ses 7 ans, le personnage féminin dans E.T. Pour cette toute jeune fille, ce sera un cadeau empoisonné ! Enfant star, Drew ne gère pas sa célébrité et tombe dans l\'alcool et la drogue dès 12 ans. Sa réputation d\'instabilité aigue fait fuir les réalisateurs. Après une traversée du désert de treize ans, ponctuée de cures de désintoxication et de rôles très mineurs, Drew reprend espoir avec des apparitions remarquées dans Batman Forever et Tout le monde dit I love you. Aujourd\'hui, elle est redevenue une actrice demandée et une femme d\'affaires avisée en produisant le très rentable Drôles de dames. Sur le plan personnel, après deux mariages express dans sa période fragile, Drew coule enfin des jours heureux avec Fabrizio Moretti.s Dans la f', '2009-12-29 14:30:54'),
(24, 1, 'PITT', 'Brad', 'M', '1963-12-18 00:00:00', 'Brad Pitt... Un p\'tit gars de l\'Oklahoma, élevé dans le Missouri et devenu le sex-symbol absolu du 7e art ! Pourtant, rien ne le prédestinait à  une telle carrière. Car Brad, c\'est d\'abord le journalisme et l\'architecture qui l\'intéressent. Et puis, sur un coup de tête, il décide de tenter sa chance à  Hollywood. Avec sa belle gueule, il enchaîne les pubs et les apparitions dans les séries télé, de Quoi de neuf docteur ? à  Dallas en passant par 21 Jump Street où il croisera un certain Johnny Depp. Repéré par Ridley Scott, il séduit Geena Davis dans Thelma et Louise... et le public féminin. Le phénomène Pitt peut commencer ! Capable de casser son image de séducteur avec des films plus osés (Kalifornia, L\'armée des douze singes ou Fight Club), Brad n\'est pourtant pas le roi du box-office. C\'est côté coeur qu\'il fait des ravages... Et après six ans d\'amour avec Jennifer Friends Aniston, il est aujourd\'hui, à  42 ans, le plus beau parti de Hollywood. Qui fera de lui le papa qu\'il rêve tant de devenir ?', '2009-12-29 14:30:54'),
(25, 1, 'ANISTON', 'Jennifer', 'F', '1969-02-11 00:00:00', 'Jennifer Aniston, fille de John, acteur dans le soap Days of our lives et nièce de Telly Savalas, alias Kojak, ne pouvait pas échapper à  une carrière télévisée. Avec son personnage de Rachel dans la série Friends, sa renommée a dépassé celle de ses aînés ! Formée au Manhattan High School of the Performing Arts, cadre de la célèbre série Fame, Jennifer débute en 1987 au théâtre et à  la télévision (The Edge, Molloy...). Le succès arrive en 1994 après qu\'elle soit parvenue à  convaincre les producteurs de Friends qu\'elle serait plus apte à  incarner le rôle de Rachel plutôt que celui de Monica. Bonne pioche car depuis elle peut s\'attaquer au cinéma. Pour couronner cette réussite professionnelle, Jennifer a réussi à  passer la bague au doigt du très convoité Brad Pitt en 2000. Malheureusement pour elle, le rêve s\'est quelque peu assombri depuis que Brad est parti après quatre ans de mariage. Les dernières rumeurs annonçaient pourtant qu\'ils pourraient se retrouver bientôt...', '2009-12-29 14:30:54'),
(26, 1, 'JOLIE', 'Angelina', 'F', '1975-06-04 00:00:00', 'Ses parents la font tourner dès ses sept ans dans un de leurs films, la comédie Lookin\' to get out, en 1982. Son enfance est marquée par une fascination de la mort : la jeune fille collectionne les dagues et dévore la littérature consacrée à  l\'empereur Vlad. Elle suit également des cours de comédie dès l\'âge de douze ans à  l\'école Lee Strasberg Theatre Institute. Désireuse de réussir par son seul talent, l\'actrice abandonne son patronyme afin de revendiquer une personnalité fougueuse qui lui est propre. Entamant au début des années 90 une carrière de mannequin, elle défile régulièrement sous les objectifs à  Londres, New York et Los Angeles. Après être apparue dans quelques clips (Has anybody seen my baby des  Rolling Stones, Rock\'n roll dreams come through de Meat Loaf et Stand by my woman de Lenny Kravitz), elle devient en 1993 le personnage féminin principal du film d\'action Glass shadow.', '2009-12-29 14:30:54'),
(27, 6, 'FARRELL', 'Colin', 'M', '1976-03-31 00:00:00', 'Colin Farrell a longtemps hésité entre une carrière de joueur de football et d\'acteur à  cause de son père et de son oncle, joueurs de football eux-mêmes. Finalement, il se tourne vers la comédie et suit les cours à  Dublin. Durant cette période, il faillit même intégrer le groupe Boyzone ! Loin de s\'égarer et surtout très impatient, Colin abandonne ses études et trouve son premier rôle dans The War zone (1999). Considéré comme talentueux, il apparaît dans Ordinary decent criminal et surtout Tigerland qui le propulse sur le devant de la scène. Devenu star avec les excès qui peuvent en découler (sexe, drogue, alcool), Colin prend rapidement du galon à  Hollywood. Il tient le premier rôle dans Phone Game, côtoie Tom Cruise dans Minority Report et son idole Al Pacino dans La Recrue. Volant de succès en succès, Colin Farrell, malgré des écarts de plus en plus nombreux, obtient, en 2004, la consécration en décrochant le personnage titre d\'Alexandre, réalisé par Oliver Stone.', '2009-12-29 14:30:54'),
(28, 1, 'LIMAN', 'Doug', 'M', '1965-07-24 00:00:00', ' Parallèlement à  ses études secondaires, Doug Liman suit les cours de l\'International Center of Photography, puis entre à  la Brown University de Providence (Rhode Island), où il collabore à  la création d\'une station de télévision à  péage gérée par ses condisciples.', '2009-12-29 14:30:54'),
(29, 4, 'BRUNI', 'Carla', 'F', '1967-12-12 00:00:00', 'Avant Carla Bruni, aucun mannequin n\'avait réussi une aussi jolie reconversion. Aujourd\'hui, les longs défilés ont laissé leur place aux studios dans lesquels elle enregistre la musique qu\'elle aime. Loin d\'être simplement une superbe femme, Carla Bruni, pendant ses années de mannequinat, composait secrètement ses premières mélodies. Elle décide d\'entrouvrir les portes de la musique en présentant quelques unes de ses créations à  Julien Clerc qui en intègre six dans son album Si j\'étais elle (1999). Sa retraite de mannequin officialisée, l\'Italienne, âgée de 32 ans, se jette à  l\'eau pour réussir ce nouveau défi. En collaboration avec Louis Bertignac (ancien du groupe Téléphone), elle sort son premier album solo Quelqu\'un m\'a dit en 2002. Le succès est immédiat avec des milliers d\'exemplaires vendus. Reconnaissance ultime pour cette néo-chanteuse, les professionnels lui décernent une Victoire de la musique en tant qu\'Artiste interprète féminine de l\'année, en 2004.', '2009-12-29 14:30:54'),
(30, 7, 'Ruiz', 'Raoul', 'M', '1941-07-25 00:00:00', ' A 5 ans, Raoul Ruiz est atteint d\'un début de tuberculose, ce qui conduit sa famille à quitter Santiago pour vivre à la campagne. Son père est un capitaine dans la marine marchande, autoritaire et farfelu / il lui offrit, en même temps, une carabine 22 long rifle et un projecteur de cinéma. Nourri de littérature (Kafka, Poe), Ruiz suit des études de droit et de théologie /l\'occasion pour lui de diriger le ciné/club de l\'université/ et écrit des dizaines de pièces de théatre d\'avant/garde. Son premier long/métrage Tres tristes tigres, qui retrace le destin croisé de trois habitants de Santiago, décroche le Léopard d\'Or à Locarno en 1969, année de son mariage avec sa collaboratrice Valeria Sarmiento. Militant socialiste, l\'apprenti cinéaste devient à cette même époque conseiller cinématographique pour le parti d\'Allende. Mais il quitte le Chili au lendemain du coup d\'état de Pinochet.', '2008-01-05 00:00:00'),
(31, 2, 'Leconte', 'Patrice', 'M', '1947-11-12 00:00:00', 'En intégrant l\'IDHEC en 1967, Patrice Leconte débute dans la réalisation en concevant de nombreux courts métrages, dont Le Laboratoire de l\'angoisse (1971) et La Famille heureuse (1973). Eclectique, il s\'intéresse également à la bande dessinée et collabore au journal Pilote en tant qu\'auteur et dessinateur de 1970 à 1975. C\'est cette année/là qu\'il met en scène son premier long : Les Vécés étaient fermés de l\'intérieur avec  Coluche et Jean Rochefort dans les rôles principaux. Le tournage est difficile et émaillé de fréquents conflits.', '2008-01-05 00:00:00'),
(32, 1, 'FORD', 'Harrison', 'M', '1942-07-13 00:00:00', 'Quand Harrison commence des cours de comédie, le but premier n\'est pas de devenir acteur mais de vaincre sa timidité. Cette initiative l\'emmènera vers les sommets de Hollywood. Comme bon nombre d\'acteur, les débuts furent pourtant laborieux. Après quelques rôles, Harrison trouve même que sa carrière ne décolle pas et il abandonne tout pour devenir menuisier ! Sa rencontre avec George Lucas (au cours d\'un chantier) lui fera embrasser à  nouveau sa carrière d\'acteur avec American Graffiti (1973). Sa filmographie peut faire envier pas mal de ses collègues en comptant d\'innombrables succès comme Star Wars, Indiana Jones (dévolu normalement à  Tom Selleck), Le Fugitif... Malgré quelques tentatives pour changer d\'image, l\'acteur Harrison Ford est perçu comme un homme honnête et prêt à  se sacrifier pour sa famille et sa patrie.', '2009-12-29 14:30:54'),
(33, 2, 'ARCADY', 'Alexandre', 'M', '1947-12-02 00:00:00', 'Alexandre Arcady a 15 ans lorsqu\'il quitte l\'Algérie devenue indépendante pour la France. En tant que cinéaste, il s\'attachera à  dépeindre cet exil et la communauté juive dont il est issu dans Le Grand carnaval (1983) et La -bas, mon pays (1999). A 22 ans, Alexandre Arcady débute une carrière de comédien en apparaissant dans une série télé intitulée La Cravache d\'or pour devenir par la suite directeur du théâtre de Suresnes. Il aborde le cinéma en 1977 en produisant le premier film de sa compagne Diane Kurys, Diabolo menthe. L\'année suivante, il passe à  la réalisation avec Le Coup de sirocco - les premiers pas des \"Pieds-noirs\" en France - qui donne le ton de nombre de ses films', '2009-12-29 14:30:54'),
(34, 2, 'Laurent', 'Mélanie', 'F', '1983-02-23 00:00:00', 'C\'est en 1999 que Mélanie Laurent débute sur grand écran, avec un rôle dans le drame Un Pont entre deux rives, porté par Gérard Depardieu et Carole Bouquet. Deux ans plus tard, elle s\'illustre au générique de Ceci est mon corps, mais c\'est en 2002 que la jeune actrice française se révèle en incarnant la petite amie de Gaspard Ulliel dans le Embrassez qui vous voudrez de Michel Blanc.\r\n\r\nMélanie Laurent emprunte alors un parcours plutôt atypique. Après avoir accompagné le Snowboarder Nicolas Duvauchelle, elle est au générique du film hong-kongais Rice Rhapsody puis redevient compagne de Gaspard Ulliel dans Le Dernier jour (2004), qui la voit travailler à  nouveau pour Rodolphe Marconi deux ans après Ceci est mon corps.\r\n\r\nA partir de 2005, les choses s\'accélèrent pour cette jeune femme au visage à  la fois sévère et fragile : une apparition dans De battre, mon cœur s\'est arrêté et un petit rôle dans Indigènes précèdent le délire belge Dikkenek et, surtout, le drame Je vais bien, ne t\'en fais pas de Philippe Lioret. L\'actrice, César du Meilleur espoir féminin pour son rôle de jeune femme déboussolée par la disparition de son frère, y fait preuve d\'une présence et d\'une intensité qui l\'imposent comme l\'un des plus sûrs espoirs du cinéma hexagonal.\r\n\r\nDès lors très demandée, Mélanie Laurent tient la vedette du film policier La Chambre des morts et du thriller Le Tueur avant, en 2008, de parcourir le Paris de Cédric Klapisch. Après avoir réalisé l\'un des courts métrages pornographiques du projet X-Femmes, elle est à  l\'affiche, en 2009, de la comédie Jusqu\'à  toi, puis franchit un nouveau cap -hollywoodien cette fois- en tenant l\'un des rôles principaux du Inglourious Basterds de Quentin Tarantino. Un rôle comme la preuve définitive d\'une ascension fulgurante, et qui a donné à  la comédienne l\'occasion d\'esquisser quelques pas de danse avec Tarantino himself sur le tapis rouge du Festival de Cannes, où le film était présenté en compétition. ', '2009-12-29 20:45:01'),
(35, 2, 'Saint Laurent', 'Yves', 'M', '1936-01-20 00:00:00', 'Après une jeunesse passée en Algérie, Yves Saint Laurent vient suivre à Paris des cours de dessins à la Chambre Syndicale de la haute/Couture. En 1955, Christian Dior le remarque et l\'emploie comme assistant modéliste. Il lui succédera deux ans plus tard et connaîtra son premier grand succès avec sa fameuse robe trapèze. Malgré cela, il sera remplacé à la tête de la maison Dior en 1961. Ce qui le poussera à fonder sa propre ligne de haute couture. Sa première collection en 1962 est un véritable succès, que ne démentiront pas les décennies suivantes : Yves Saint Laurent lancant la mode du caban, du smocking féminin, des sahariennes. En 1966, il ouvre son magasin Saint Laurent Rive Gauche, spécialisé dans le prêt à porter féminin, et trois ans plus tard il s\'ouvre aux collections masculines. Yves Saint Laurent réalisera également de nombreux costumes et décors pour le théatre et le cinéma (\'Arabesque\', \'Belle de jour\'). A partir de 1983, plusieurs musées lui consacreront des rétrospectives. Il est nommé en 2001 commandeur de la Légion d\'honneur, et fait ses adieux à la haute couture le 7 janvier 2002.', '2008-01-05 00:00:00'),
(36, 2, 'Sednaoui', 'Stéphane', 'M', '1959-05-14 00:00:00', 'Il habite New York depuis le début des années 1990. Ex petit ami de Bjork, il a une fille avec Laetitia Casta. Il faut voir comment les plus grandes rock stars de la planète parlent de Stéphane Sednaoui, réalisateur de plusieurs des clips les plus percutants de la décennie 90: Mysterious Ways de U2, Give It Away des Red Hot Chili Peppers, Big Time Sensuality de Bjork. Il faut voir Bono s\'incliner devant le charme dévastateur du vidéaste, raconter en entrevue à quel point, sur le plateau de tournage, le plus cool, celui qui fait fondre les demoiselles, c\'est toujours Sednaoui, charismatique beauté male grevé d\'un accent francais plus gros que le bras.', '2008-01-05 00:00:00'),
(39, 8, 'THERON', 'Charlize', 'F', '1975-08-07 00:00:00', 'Son adolescence a été endeuillée par la mort de son père, tué sous ses yeux par sa mère, en état de légitime défense, alors qu\'il était sous l\'emprise de l\'alcool.\r\n\r\nCe qui n\'empêcha nullement la jeune fille de tout mettre en œuvre, activement soutenue par sa mère, pour parvenir à un certain accomplissement, d\'abord via des cours de danse et un travail de mannequin, puis par des cours de théâtre.\r\n\r\nLa consécration est venue avec l\'Oscar de la meilleure actrice en 2003, récompense décernée le 29 février 2004, pour son rôle de la tueuse en série Aileen Wuornos dans Monster de Patty Jenkins.\r\n\r\nCe rôle, pour lequel l\'actrice n\'a pas hésité à prendre quinze kilogrammes et supporter de longues heures durant le port d\'un dentier et de lentilles de contact pour masquer son regard couleur d\'azur, a été apprécié outre-Atlantique.\r\n\r\nCharlize Theron est partie séjourner dans son pays natal aussitôt après l\'obtention de cette récompense, et y a été accueillie comme une héroïne nationale, d\'autant plus facilement qu\'aucun Sud-Africain n\'avait jamais été distingué, depuis 75 ans, par un Oscar. L\'effet de l\'obtention de cet oscar fut si retentissant,que Charlize Theron fut recu par l\'ancien président sud africain Nelson Mandela et par l\'actuel président Thabo Mbeki. De plus, beaucoup de nombreux parents en Afrique du Sud ont prénonmé leurs filles Charlize,suite à la consécration de leur compatriote.', '2008-01-05 00:00:00'),
(40, 2, 'Garrel', 'Louis', 'M', '1983-06-14 00:00:00', 'Louis Garrel est le fils du réalisateur Philippe Garrel et de l\'actrice et réalisatrice Brigitte Sy, ainsi que le petit-fils de l’acteur Maurice Garrel. Il a une sœur cadette, l\'actrice Esther Garrel et une demi-sœur également actrice Lena Garrel.\r\nFilmant les gens qui lui sont proches et sa propre famille, Philippe Garrel emploie très tôt son fils devant la caméra. Le jeune Louis joue alors en compagnie de sa mère et de son grand-père dans les films de son père, et tout spécialement dans Les Baisers de secours (1989) à l\'âge de six ans.\r\nAdmirateur de Jean-Pierre Léaud, son parrain, l\'adolescent Louis Garrel s\'emploie à travailler ses capacités de comédien dans les cours de théâtre de son collège ainsi qu\'au conservatoire du Xe arrondissement de Paris1. Après des études littéraires passées au lycée Fénelon à Paris, il se détourne de la voie classique et renonce au baccalauréat afin de poursuivre ses études au Conservatoire national supérieur d\'art dramatique de Paris, dont il sort diplômé en 2004. Il multiplie parallèlement les expériences et les stages, dont celui qu\'il réalise à la Fémis, avec Philippe Garrel comme maître de stage, puis décroche son premier véritable rôle au cinéma en 2001, dans Ceci est mon corps de Rodolphe Marconi, avec Jane Birkin.\r\nLouis Garrel poursuit sa carrière au cinéma en tournant notamment dans deux évocations de mai 68 : Innocents - The Dreamers de Bernardo Bertolucci en 2003 avec Eva Green et Les Amants réguliers de Philippe Garrel en 2005. C\'est pour ce dernier film qu\'il obtient en 2006 deux récompenses : l\'Étoile d\'or de la révélation masculine décernée par l’Académie de la presse du cinéma français et le César du meilleur espoir masculin.\r\nIl devient l\'acteur fétiche du cinéaste Christophe Honoré, avec lequel il collabore à cinq reprises dans les longs-métrages Ma mère (2004), adaptation du roman éponyme de Georges Bataille avec Isabelle Huppert, Dans Paris (2006), aux côtés de Romain Duris, Les Chansons d\'amour (2007), film pour lequel il dévoile aussi des talents de chanteur, La Belle Personne (2008), Non ma fille tu n\'iras pas danser (2009) et enfin, Les Bien-aimés (2011). En 2007, il est également à l\'affiche d’Actrices, le second film de Valeria Bruni-Tedeschi.', '2019-01-14 00:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`VIP_NUMERO`);

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`AGENCE_NUMERO`);

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`ALBUM_NUMERO`),
  ADD KEY `CIF1_FK` (`MAISONDISQUE_NUMERO`);

--
-- Index pour la table `apouragence`
--
ALTER TABLE `apouragence`
  ADD PRIMARY KEY (`AGENCE_NUMERO`,`VIP_NUMERO`),
  ADD KEY `LIEN_136_FK` (`VIP_NUMERO`);

--
-- Index pour la table `apoursujet`
--
ALTER TABLE `apoursujet`
  ADD PRIMARY KEY (`ARTICLE_NUMERO`,`VIP_NUMERO`),
  ADD KEY `LIEN_153_FK` (`VIP_NUMERO`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ARTICLE_NUMERO`),
  ADD KEY `CIF2_FK` (`EXEMPLAIRE_NUMERO`);

--
-- Index pour la table `chanteur`
--
ALTER TABLE `chanteur`
  ADD PRIMARY KEY (`VIP_NUMERO`);

--
-- Index pour la table `comporte`
--
ALTER TABLE `comporte`
  ADD PRIMARY KEY (`ARTICLE_NUMERO`,`PHOTO_NUMERO`,`VIP_NUMERO`),
  ADD KEY `LIEN_141_FK` (`PHOTO_NUMERO`),
  ADD KEY `VIP_NUMERO` (`VIP_NUMERO`);

--
-- Index pour la table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`ALBUM_NUMERO`,`VIP_NUMERO`),
  ADD KEY `LIEN_185_FK` (`VIP_NUMERO`);

--
-- Index pour la table `couturier`
--
ALTER TABLE `couturier`
  ADD PRIMARY KEY (`VIP_NUMERO`);

--
-- Index pour la table `defile`
--
ALTER TABLE `defile`
  ADD PRIMARY KEY (`DEFILE_NUMERO`),
  ADD KEY `CIF4_FK` (`VIP_NUMERO`);

--
-- Index pour la table `defiledans`
--
ALTER TABLE `defiledans`
  ADD PRIMARY KEY (`DEFILE_NUMERO`,`VIP_NUMERO`),
  ADD KEY `LIEN_137_FK` (`VIP_NUMERO`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`EXEMPLAIRE_NUMERO`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_NUMERO`),
  ADD KEY `CIF3_FK` (`VIP_NUMERO`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD PRIMARY KEY (`FILM_NUMERO`,`VIP_NUMERO`),
  ADD KEY `LIEN_330_FK` (`VIP_NUMERO`);

--
-- Index pour la table `liaison`
--
ALTER TABLE `liaison`
  ADD PRIMARY KEY (`VIP_NUMERO`,`VIP_VIP_NUMERO`,`DATE_EVENEMENT`),
  ADD KEY `LIEN_195_FK` (`VIP_VIP_NUMERO`);

--
-- Index pour la table `maisondisque`
--
ALTER TABLE `maisondisque`
  ADD PRIMARY KEY (`MAISONDISQUE_NUMERO`);

--
-- Index pour la table `mannequin`
--
ALTER TABLE `mannequin`
  ADD PRIMARY KEY (`VIP_NUMERO`);

--
-- Index pour la table `mariage`
--
ALTER TABLE `mariage`
  ADD PRIMARY KEY (`VIP_NUMERO`,`VIP_VIP_NUMERO`,`DATE_EVENEMENT`),
  ADD KEY `LIEN_191_FK` (`VIP_VIP_NUMERO`);

--
-- Index pour la table `nationalite`
--
ALTER TABLE `nationalite`
  ADD PRIMARY KEY (`NATIONALITE_NUMERO`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`PHOTO_NUMERO`,`VIP_NUMERO`),
  ADD KEY `POSSEDE_FK` (`VIP_NUMERO`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`VIP_NUMERO`);

--
-- Index pour la table `vip`
--
ALTER TABLE `vip`
  ADD PRIMARY KEY (`VIP_NUMERO`),
  ADD KEY `A1_FK` (`NATIONALITE_NUMERO`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `agence`
--
ALTER TABLE `agence`
  MODIFY `AGENCE_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `ARTICLE_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `film_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `nationalite`
--
ALTER TABLE `nationalite`
  MODIFY `NATIONALITE_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `vip`
--
ALTER TABLE `vip`
  MODIFY `VIP_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
  
  ALTER TABLE `exemplaire`
  MODIFY `EXEMPLAIRE_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
  
  ALTER TABLE `defile`
  MODIFY `DEFILE_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
  ALTER TABLE `maisondisque`
  MODIFY `MAISONDISQUE_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  
  ALTER TABLE `album`
  MODIFY `ALBUM_NUMERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD CONSTRAINT `FK_ACTEUR_EST4_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FK_ALBUM_CIF1_MAISONDI` FOREIGN KEY (`MAISONDISQUE_NUMERO`) REFERENCES `maisondisque` (`MAISONDISQUE_NUMERO`);

--
-- Contraintes pour la table `apouragence`
--
ALTER TABLE `apouragence`
  ADD CONSTRAINT `FK_APOURAGE_LIEN_125_AGENCE` FOREIGN KEY (`AGENCE_NUMERO`) REFERENCES `agence` (`AGENCE_NUMERO`),
  ADD CONSTRAINT `FK_APOURAGE_LIEN_136_MANNEQUI` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `mannequin` (`VIP_NUMERO`);

--
-- Contraintes pour la table `apoursujet`
--
ALTER TABLE `apoursujet`
  ADD CONSTRAINT `FK_APOURSUJ_LIEN_126_ARTICLE` FOREIGN KEY (`ARTICLE_NUMERO`) REFERENCES `article` (`ARTICLE_NUMERO`),
  ADD CONSTRAINT `FK_APOURSUJ_LIEN_153_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_ARTICLE_CIF2_EXEMPLAI` FOREIGN KEY (`EXEMPLAIRE_NUMERO`) REFERENCES `exemplaire` (`EXEMPLAIRE_NUMERO`);

--
-- Contraintes pour la table `chanteur`
--
ALTER TABLE `chanteur`
  ADD CONSTRAINT `FK_CHANTEUR_EST2_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `comporte`
--
ALTER TABLE `comporte`
  ADD CONSTRAINT `FK_COMPORTE_LIEN_127_ARTICLE` FOREIGN KEY (`ARTICLE_NUMERO`) REFERENCES `article` (`ARTICLE_NUMERO`),
  ADD CONSTRAINT `FK_COMPORTE_LIEN_141_PHOTO` FOREIGN KEY (`PHOTO_NUMERO`) REFERENCES `photo` (`PHOTO_NUMERO`),
  ADD CONSTRAINT `comporte_ibfk_1` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `FK_COMPOSER_LIEN_151_ALBUM` FOREIGN KEY (`ALBUM_NUMERO`) REFERENCES `album` (`ALBUM_NUMERO`),
  ADD CONSTRAINT `FK_COMPOSER_LIEN_185_CHANTEUR` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `chanteur` (`VIP_NUMERO`);

--
-- Contraintes pour la table `couturier`
--
ALTER TABLE `couturier`
  ADD CONSTRAINT `FK_COUTURIE_EST3_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `defile`
--
ALTER TABLE `defile`
  ADD CONSTRAINT `FK_DEFILE_CIF4_COUTURIE` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `couturier` (`VIP_NUMERO`);

--
-- Contraintes pour la table `defiledans`
--
ALTER TABLE `defiledans`
  ADD CONSTRAINT `FK_DEFILEDA_LIEN_128_DEFILE` FOREIGN KEY (`DEFILE_NUMERO`) REFERENCES `defile` (`DEFILE_NUMERO`),
  ADD CONSTRAINT `FK_DEFILEDA_LIEN_137_MANNEQUI` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `mannequin` (`VIP_NUMERO`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_FILM_CIF3_REALISAT` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `realisateur` (`VIP_NUMERO`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `FK_JOUE_LIEN_132_FILM` FOREIGN KEY (`FILM_NUMERO`) REFERENCES `film` (`film_NUMERO`),
  ADD CONSTRAINT `FK_JOUE_LIEN_330_ACTEUR` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `acteur` (`VIP_NUMERO`);

--
-- Contraintes pour la table `liaison`
--
ALTER TABLE `liaison`
  ADD CONSTRAINT `FK_LIAISON_LIEN_194_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`),
  ADD CONSTRAINT `FK_LIAISON_LIEN_195_VIP` FOREIGN KEY (`VIP_VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `mannequin`
--
ALTER TABLE `mannequin`
  ADD CONSTRAINT `FK_MANNEQUI_EST1_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `mariage`
--
ALTER TABLE `mariage`
  ADD CONSTRAINT `FK_MARIAGE_LIEN_190_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`),
  ADD CONSTRAINT `FK_MARIAGE_LIEN_191_VIP` FOREIGN KEY (`VIP_VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_PHOTO_POSSEDE_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD CONSTRAINT `FK_REALISAT_EST5_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`);

--
-- Contraintes pour la table `vip`
--
ALTER TABLE `vip`
  ADD CONSTRAINT `FK_VIP_A1_NATIONAL` FOREIGN KEY (`NATIONALITE_NUMERO`) REFERENCES `nationalite` (`NATIONALITE_NUMERO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
