-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 16 août 2025 à 19:42
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `artbox`
--

-- --------------------------------------------------------

--
-- Structure de la table `oeuvres`
--

CREATE TABLE `oeuvres` (
  `id` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `artiste` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `oeuvres`
--

INSERT INTO `oeuvres` (`id`, `titre`, `artiste`, `description`, `image`) VALUES
(1, 'Dodomu', 'Mia Tozerski', 'Mia Tozerski est une artiste peintre ukrainienne réfugiée de la guerre. Sur cette œuvre, Dodomu (\"domicile\" en ukrainien), elle nous montre la tristesse du peuple ukrainien qu\\\'elle partage, ayant elle-même dû quitter son foyer. L\\\'œuvre évoque le drapeau liquéfié d\\\'une Ukraine en souffrance, pleurant la mort de ses compatriotes. Ce travail chargé d\\\'émotion est le symbole d\\\'un événement qui marquera l\\\'Histoire. Cette peinture à l\\\'acrylique rayonne grâce à son fond lisse et ses mélanges de couleurs éclatantes.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/clark-van-der-beken.png'),
(2, 'Aashaaheen Baadal', 'Anaisha Devi', 'Sur cette oeuvre conceptuelle à la fois organique, minérale et liquide, Anaisha Devi nous transporte dans un nuage noir envoûtant. Un sombre tableau qui, par son verni éclatant, rayonne tel un marbre poli. Une oeuvre à la cohérence transcendantale, exécutée à la perfection', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/pawel-czerwinski-3.png'),
(3, 'Nightlife Traffic', 'Andrew Forsythe', 'Quisque accumsan ultrices ligula vestibulum posuere. Aliquam feugiat ligula eget massa blandit condimentum. Morbi volutpat erat luctus suscipit pellentesque. Quisque cursus tempor nibh at sollicitudin. Sed blandit libero velit. Etiam tincidunt facilisis mollis. Ut mollis nunc sit amet lacinia luctus. Suspendisse volutpat enim semper arcu rutrum, et iaculis risus interdum. Duis at libero.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/dan-cristian-padure.png'),
(4, 'Le refuge de l\'Havre', 'Simon Pelletier', 'Nam tempus neque nec felis venenatis auctor. Nam velit risus, lobortis eu quam non, interdum efficitur nibh. Phasellus a augue ac orci lacinia mattis et vel lectus. Sed nec tellus urna. Donec at turpis turpis. Cras quam tellus, imperdiet vitae finibus id, varius quis felis. Maecenas blandit eleifend risus, vel hendrerit erat dignissim id. Nullam at laoreet nibh. Nulla gravida varius sollicitudin. Etiam non aliquam diam, tempor varius sapien. Aenean et velit eu nisi lobortis massa nunc.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/steve-johnson-5.png'),
(5, 'Red Washover', 'Kit Van Der Borght', 'Nunc euismod ullamcorper tortor, id efficitur ante interdum in. Integer eu condimentum nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras viverra suscipit feugiat. Mauris vehicula luctus tellus, eu hendrerit libero laoreet ut. In tristique vehicula nisl in tempus. Morbi tempus aliquet gravida. In eget est congue, rhoncus sapien at, cursus metus.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/steve-johnson.png'),
(6, 'Chromatics', 'Jean-Michel Delatronchette', 'Vivamus commodo non libero at hendrerit. In lacinia dui sit amet pellentesque iaculis. Donec at ultricies sem porttitor.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/pawel-czerwinski.png'),
(7, 'Digital Negative', 'Hamish McKee', 'Integer in nisl posuere, pulvinar ex ac, tincidunt risus. Nullam vel lorem et leo dignissim accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tempor, magna non consectetur dapibus, est libero iaculis lacus, eget semper turpis orci vitae felis. Fusce eget molestie.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/jazmin-quaynor.png'),
(8, 'Blast from the past', 'Juliette Baskerville', 'Nunc fermentum purus dapibus justo fermentum auctor. Maecenas non tincidunt leo. Morbi vitae iaculis sem. Donec quis scelerisque massa. Fusce quis accumsan diam, et interdum lectus. Suspendisse mattis pulvinar vehicula. Duis nisi.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/steve-johnson-6.png'),
(9, 'Hurricane', 'Natalie Wellington', 'Aliquam tristique tempus molestie. Nulla nisl eros, dapibus eu lectus in, cursus accumsan arcu. Suspendisse bibendum diam dignissim porta maximus. Praesent sollicitudin consectetur faucibus. Cras pulvinar massa a orci rutrum, id blandit enim viverra. Praesent sed congue augue. Suspendisse efficitur, nisl quis finibus faucibus, lacus felis bibendum leo, eu euismod lacus mauris in felis. Quisque dignissim et dui et aliquet. Donec ut lobortis eros, vitae tincidunt augue metus.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/victor-grabarczyk.png'),
(10, 'La marée rouge', 'Martin Rodriguez', 'Vivamus quis odio vel ligula feugiat facilisis. Donec eleifend pellentesque massa, ut malesuada est bibendum sit amet. Morbi tincidunt nec tellus vel ornare. Mauris dolor tellus, gravida eget euismod eu, viverra eget urna. Phasellus feugiat ipsum nec lorem accumsan, sed porta quam dictum massa nunc.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/pawel-czerwinski-2.png'),
(11, 'Asimilacion', 'Angel Sanchez-Fernandez', 'Mauris ut justo ac mi pretium eleifend. Curabitur sed magna ut elit facilisis pharetra. Maecenas tincidunt fermentum ipsum ut sollicitudin. Nullam feugiat, neque vel egestas sollicitudin, quam leo mattis mauris, in lacinia sem mi id risus. Nullam ultrices quam eu leo auctor tempus. Fusce vestibulum mi ex, vel ultricies purus mollis sollicitudin. Aenean ac vehicula ipsum. Nam turpis ante, ultrices eget odio sed, luctus bibendum mauris sodales sed.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/steve-johnson-2.png'),
(12, 'La Galaxia Gialla', 'Eduardo Tancredi', 'Mauris maximus, orci sollicitudin ultrices elementum, tellus neque feugiat leo, quis lobortis purus neque vel lectus. Ut sagittis eros id lectus porttitor tincidunt. Donec scelerisque diam nec felis egestas, eget finibus ante porttitor. Sed malesuada sapien ut semper accumsan. Duis tristique dui vel egestas porttitor. Nunc tristique dapibus orci a amet.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/fly-d.png'),
(13, 'Puffy Amalgamate', 'Sandro De Blasi', 'Donec semper a massa quis congue. In malesuada lorem ligula, ut posuere magna pulvinar in. Proin vitae enim gravida, commodo odio.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/orfeas-green.png'),
(14, 'Mirage', 'Stéphanie Kaiser', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam iaculis lorem ac ex tristique egestas et nec sapien. Donec tincidunt id erat sit amet tempus. Nullam vel molestie dui. Duis a neque massa. Vivamus quis ornare lacus. Nullam eleifend condimentum egestas. Vivamus magna purus, fermentum mollis mauris sed, consectetur interdum libero. Duis interdum tortor tellus, eget sollicitudin quis.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/steve-johnson-4.png'),
(15, 'Blaue Gelbe Muster', 'Adelheid Von Schreiber', 'Curabitur dui odio, porta vel tempor sed, consectetur vitae mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus nec.', 'http://localhost/Lavoisier_Valerie_1_site_web_082025/img/steve-johnson-3.png'),
(16, 'le Cheval Bleu', 'Franz Marc', 'Cette huile sur toile de format vertical est une peinture animalière représentant un poulain nu devant un paysage vallonné, sa robe claire rendue avec des teintes de bleu. Chef-d&#039;œuvre de l&#039;artiste, cette peinture est conservée depuis 1965 à la Lenbachhaus, à Munich, en Bavière.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Franz_Marc_Blaues_Pferd_1911.jpg/800px-Franz_Marc_Blaues_Pferd_1911.jpg'),
(17, 'Les Grands Chevaux Bleus', 'Franz Marc', 'Les Grands Chevaux bleus – en allemand Die grossen blauen Pferde – est un tableau réalisé par le peintre allemand Franz Marc en 1911. De format horizontal, cette huile sur toile est une peinture animalière qui représente trois chevaux nus rendus en bleu, devant un paysage vallonné.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Franz_Marc_005.jpg/1920px-Franz_Marc_005.jpg'),
(18, 'La Tour des Chevaux Bleus', 'Franz Marc', 'Cette œuvre, une des plus importantes de l&#039;artiste est portée disparue depuis la fin de la Seconde Guerre mondiale en 1945. Son dernier propriétaire a été Hermann Göring, qui avait saisi le tableau pour enrichir sa collection personnelle lors de l&#039;exposition d&#039;« Art dégénéré » organisée par les nazis à Munich, en 1937.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Franz_Marc_029a.jpg/800px-Franz_Marc_029a.jpg'),
(19, 'Chevaux au Patûrage', 'Franz Marc', 'peinture de 1910', 'https://upload.wikimedia.org/wikipedia/commons/1/1d/Franz_Marc_-_Chevaux_au_p%C3%A2turage.jpg'),
(20, 'The Fox', 'Franz Marc', 'Le Renard', 'https://www.repro-tableaux.com/kunst/franz_marc_727/The-Fox-1.jpg'),
(21, 'Les Chevaux Rouges', 'Franz Marc', 'Tableau les chevaux rouges', 'https://www.repro-tableaux.com/kunst/franz_marc_727/Die-roten-Pferde-Weidende-Pferde-IV.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `oeuvres`
--
ALTER TABLE `oeuvres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `oeuvres`
--
ALTER TABLE `oeuvres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
