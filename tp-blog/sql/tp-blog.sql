-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 08 juin 2020 à 12:15
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tp-blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`Id`, `FirstName`, `LastName`) VALUES
(1, 'John', 'Doe'),
(2, 'David', 'Boe'),
(3, 'Marc', 'Boe');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(1, 'Information'),
(2, 'Jeux-Vidéos');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `Id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NickName` varchar(30) DEFAULT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CreationTimestamp` (`CreationTimestamp`),
  KEY `Post_Id` (`Post_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`Id`, `NickName`, `Contents`, `CreationTimestamp`, `Post_Id`) VALUES
(1, 'Hakim', 'Ca me rappel tellement de souvenir ! Merci !', '2020-06-04 15:53:16', 10);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Contents` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Author_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `Category_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Title` (`Title`),
  KEY `CreationTimestamp` (`CreationTimestamp`),
  KEY `Author_Id` (`Author_Id`),
  KEY `Category_Id` (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`Id`, `Title`, `Contents`, `Image`, `CreationTimestamp`, `Author_Id`, `Category_Id`) VALUES
(5, 'TEST : Mafia II Definitive Edition, Vito n’a pas pris une ride !', 'On peut dire que l’année 2010 étaient riche en terme de sorties de jeux, et après un excellent premier opus sorti en 2002 (Mafia: The City of Lost Heaven), c’est Mafia II qui venait enrichir cette année déjà bien chargée. La notion d’open-world a quelque peu changé ces dernières années, et pas forcément dans le bon sens du terme. Monde ouvert signifie aujourd’hui pour les développeurs « accumulation de contenu », avec des missions secondaires à foison et pas toujours intéressantes, des activités plus ou moins accrocheuses et des zones de plus en plus grandes (le tort dans lequel est tombé Mafia III par exemple)… Nous replonger dans Mafia II est un réel plaisir, car le jeu développé à l’origine par 2K Czech évite justement tous ces problèmes. Si vous cherchez des activités annexes, passez votre chemin. Mafia II a beau proposer un monde ouvert et une carte relativement grande, il n’en reste pas moins très scripté et vous propose de suivre une trame principale qui s’étend sur une douzaine d’heures. Cette nouvelle édition comporte le jeu de base, tel qu’on l’a connu (aucune censure à signaler) ainsi que ses DLC The Betrayal of Jimmy, Jimmy’s Vendetta et Joe’s Adventures, sans oublier quelques packs de tenues ou de véhicules.\r\nMafia II est un jeu que l’on adore, et qui propose une ambiance incroyable. Musiques, personnages charismatiques, rebondissements, courses-poursuites, fusillades : tout est fait pour nous immerger dans la ville d’Empire Bay. Le plaisir de retrouver Vito Scaletta et cette ambiance des années 40 est toujours là, et nous nous sommes replongés dans le scénario du jeu immédiatement. Peu importe le fait qu’il n’y ait que quelques objets ou magazines à collectionner en plus des missions principales : c’est bien l’histoire de Vito qui nous passionne, et le tout est parfaitement rythmé et monte en puissance. Seul le gameplay a un peu vieilli, notamment dans certaines animations et la visée, pas toujours très précise lors des gunfights les plus nerveux. En terme d’intérêt, le jeu n’a donc pas bougé d’un poil et les inspirations au cinéma sont bien exploitées et toujours aussi intéressantes. Mafia II fait clairement partie de nos « GTA-like » préférés, avec Scarface ou encore GTA III, d’autant plus qu’il est intégralement en français et que le doublage est excellent ! Et ce remaster alors ?\r\n\r\nLe travail réalisé sur cette nouvelle édition est tout à fait convenable, sans transcender le jeu d’origine, déjà excellent en terme de direction artistique. Néanmoins, le tout est plus fluide (le frame rate est stable) et beaucoup plus net. La distance d’affichage est supérieure et les décors lointains ne souffrent plus du léger flou que l’on constatait sur notre Xbox 360. On note également un travail sur les textures, plus fines et plus diversifiées. Certaines ont été complètement retravaillées, rendant les décors beaucoup plus agréables à l’œil, notamment au sol, avec des effets neigeux qui ressortent davantage. Les effets de lumière ont également subi un léger lifting, surtout de nuit avec les lampadaires ou encore dans les intérieurs. Mais il n’y a pas que les décors qui ont été retravaillés, et les visages des personnages ne sont pas en reste. En comparant avec le jeu d’origine, les différentes sont bien là. Les textures de peau ont gagné en intensité et en contraste, ajoutant même des « défauts » rendant les visages plus marqués et réalistes. Idem pour les cheveux, qui gagnent en réalisme. Malgré tout, certains personnages ayant bénéficié de ce travail paraissent moins réalistes car plus « jeunes » qu’à l’origine. Ou peut-être que ces 10 années leur ont permis de se faire une petite teinture. S’il n’est donc pas incroyable, ce remaster fait le job et affine son univers, le tout étant compatible en 4K (sur PC, Xbox One X et PS4 Pro). Bien entendu, de nombreux détails trahissent les 10 ans du jeu, comme ces PNJ clonés à outrance, quelques bugs d’IA ou de collision non corrigés, ou encore les animations pas toujours fluides des personnages. Mais ce ne sont que des détails…', 'mafia-2.jpg', '2020-06-04 15:43:21', 1, 2),
(6, 'TEST : Mortal Kombat 11 – Aftermath, l’histoire continue', 'Nous adorons Mortal Kombat 11, et se replonger dans son mode histoire est un réel plaisir. Mais revenons un instant sur les différents tarifs des éditions proposées. L’extension Aftermath est vendue très exactement 39,99€, et il vous faudra rajouter 10€ si vous souhaitez disposer du premier Kombat Pack. Enfin, une édition « complète » est disponible, incluant le jeu, les neuf nouveaux personnages et 25 skins pour 59,99 €. Il est quand même dommage de ne pas avoir offert le Kombat Pack pour l’achat d’Aftermath… Concrètement, que donne cette suite du mode histoire ? Attention spoilers : on retrouve l’ami Liu Kang, désormais gardien du temps et protecteur de l’Earthrealm, qui a mis un sacré bordel dans le continuum espace-temps. Le seul moyen d’arranger ça et de voyager une nouvelle fois dans le temps pour mettre la main sur la couronne de Kronika avant qu’elle ne soit détruite. Trois guerriers vont se charger de cette mission : Nightwolf, Fujin et ce salopiot de Shang Tsung ! Les développeurs s’amusent donc une nouvelle fois à nous faire remonter dans le passé pour revivre des scènes sous un autre angle, en faisant bien attention de ne pas mettre encore plus le bazar ! Ces nouveaux chapitres sont vraiment excellents et la mise en scène est toujours aussi soignée. Les cinématiques sont de toute beauté et le rythme ne faiblit pas, les transitions entre les cut-scenes et les combats étant juste parfaites. Attention toutefois, le tout reste bien court : nous avons mis 2h30 (dont la moitié de cinématiques) pour terminer ces chapitres supplémentaires, nous menant vers un choix final capital. C’était cool, violent et intense, mais c’est passé trop vite ! Petit bémol néanmoins concernant la partie sonore : le mixage fait parfois des siennes et certaines répliques sont plus fortes que d’autres, ce qui est un peu dérangeant. Le gameplay reste quant à lui inchangé.\r\nA cela viennent donc s’ajouter 3 nouveaux combattants : Fujin, Sheeva et RoboCop. Si ce dernier propose un gameplay un peu rigide mais une grosse puissance de feu (le personnage a l’apparence et la voix de Peter Weller), Fujin est nettement plus nerveux à jouer et enchaîne les combos avec une sacrée classe. Sheeva se situe entre les 2, avec une puissance de frappe élevée mais tempérée par des coups qui manquent de portée. Ces personnages sont superbes graphiquement, et les détails sont nombreux. Les fatalities, elles, sont toujours aussi cradingues ! On notera également l’ajout de 4 stages supplémentaires et de packs de costumes, sans oublier les excellentes Friendship, disponibles également pour les joueurs possédant le jeu de base ! Le plaisir de se replonger dans le mode histoire de Mortal Kombat est bel et bien là, et le tout est une nouvelle fois superbe visuellement et très soigné en terme de mise en scène. Mais malgré ces 2h30 supplémentaires et la présence de nouveaux stages et de 3 combattants inédits, il faut avouer que les 40€ demandés sont un peu élevés… Certes, du contenu gratuit est également proposé pour tous les joueurs, mais un montant de 25€ aurait été à nos yeux plus acceptable. Nous vous conseillons donc d’attendre une baisse de prix, mais dès que ce sera le cas, foncez, car c’est toujours aussi bon !', 'mortal-kombat-11.jpg', '2020-06-04 15:45:04', 1, 2),
(7, 'TEST : Those Who Remain, quand Layers of Fear rencontre P.T.', 'Those Who Remain est un jeu qui donne direct le ton. Alors que votre personnage est sur le point de se suicider, il reçoit un message sur son téléphone et décide d’aller rejoindre sa maîtresse dans un motel. Le lieu est étrangement désert, et on comprend rapidement que les choses ne tournent pas rond. Nous ne vous en dirons pas plus sur l’histoire, qui s’avère vraiment bien écrite et réserve quelques surprises. Sachez simplement que vous allez devoir vous rendre dans la ville de Dormont pour enquêter sur la mort mystérieuse d’une jeune fille de 13 ans, mais que tous les habitants, ou presque, on disparu. Those Who Remain est un walking simulator à la première personne, dont le gameplay est assez limité. A l’image d’un Layers of Fear, le jeu va s’amuser à jouer avec vos sens et tenter de vous faire perdre les pédales, la lumière (et du coup l’obscurité) étant au centre des différentes énigmes du jeu. Pour faire simple : vous n’aurez aucune envie de vous engouffrer dans la pénombre, et vous allez rapidement remarquer des silhouettes noires qui vous fixent avec insistance. C’est le cas en extérieur mais également à l’intérieur des différents bâtiments (maison, scierie, église, commissariat, hôpital), et on retrouve ce principe qui nous avait tant fait frissonner dans le court métrage Light Out (qui a débouché sur un film nommé Dans le Noir chez nous) : lorsque la lumière est allumée, tout va bien, mais lorsque l’on appuie sur l’interrupteur, on peut apercevoir ces fameuses silhouettes qui vous fixent. Frissons garantis ! Il s’agira donc de trouver des sources de lumière (allumer un générateur, trouver une lampe) pour progresser dans le jeu et avancer dans votre enquête sans se faire transpercer la peau. La plupart des énigmes sont clairement réussies, et nous n’avons été bloqués qu’une ou deux fois à cause d’un objet un peu trop bien caché (il faudra bien fouiller les décors).\r\nPlus on avance dans l’histoire et plus on découvre ce qui est arrivé à la fillette. Des habitants de la ville, plus ou moins hauts placés, sont concernés par cette histoire, notamment des enfants qui s’amusaient à la martyriser. Le jeu vous demandera de trouver un maximum d’indices puis de faire un choix pour ces différentes personnes : condamner ou pardonner. La fin sera forcément influencée par ces décisions, parfois difficiles. En plus de ces phases de recherche et des choix à effectuer, vous aurez, comme dans tout bon jeu d’horreur qui se respecte ces dernières années, à participer à des séquences de fuite. Nous ne vous dirons pas qui vous poursuit, mais sachez que le stress est carrément au rendez-vous, et tout ceci rappelle fortement P.T, le Silent Hills annulé d’Hideo Kojima. Bien que scriptées et parfois frustrantes (on meurt parfois bêtement), ces séquences sont bien flippantes, notamment lorsqu’elles se déroulent dans une sorte de monde parallèle accessible via des portes spéciales. Mais chut, nous préférons une nouvelle fois vous laisser la surprise ! De manière globale, le gameplay reste très basique : on avance, on court, on interagit avec quelques objets… Et c’est tout. Heureusement, les lieux (bien que clichés) parviennent à se renouveler et à éviter la redondance. Et lorsque les développeurs s’amusent à nous faire perdre la boule, s’inspirant une nouvelle fois fortement du travail de la Bloober Team, on ne peut qu’apprécier, surtout que l’histoire s’avère accrocheuse. On sent que les développeurs sont des passionnés du genre, et de nombreuses références au cinéma sont également présentes. Malgré toutes ces inspirations, Those Who Remain ne dépasse jamais la limite du plagiat, et parvient à proposer sa propre ambiance.\r\nOui, nous avons parfois eu peur lors de notre périple qui aura duré 6h. Certains passages sont vraiment crispants, le jeu a le mérite de ne pas abuser de jumpscares faciles, et le tout fonctionne bien grâce à un sound design vraiment excellent. Les musiques parviennent à mettre le stress (certaines semblent inspiré du film It Follows) et les sons sont ultra bien maîtrisés. Porte qui claque, femme qui pleure ou qui se met soudainement à hurler, pistes sonores angoissantes : tout y est pour immerger le joueur, surtout si l’on joue au casque, l’effet étant décuplé. Graphiquement par contre, c’est une autre histoire, et on sent que le jeu a bénéficié d’un petit budget. Ça rame beaucoup sur PS4 (le frame rate n’est quasi jamais stable), certaines textures sont bien vilaines, et la jouabilité est vraiment lourde. Ces soucis techniques ne seraient apparemment pas présents sur PC… Heureusement, de beaux effets de lumière rehaussent le tout. On précisera également que les voix sont en anglais et que le jeu est sous-titré en français.', 'those-who-remain.jpg', '2020-06-04 15:46:43', 1, 2),
(8, 'TEST : Utawarerumono – Prelude to The Fallen', 'Pour replacer le contexte, il est bon de préciser que Prelude to The Fallen se déroule avant les opus Mask of Deception et Mask of Truth. Le héros que vous incarnez est amnésique, et son réveil est plus que douloureux. Impossible en effet de bouger sous peine d’entendre craquer ses os, le tout dans d’atroces souffrances. Ou sommes-nous ? Pourquoi avons-nous un masque impossible à enlever sur le visage ? Qui sont ces habitants qui s’occupent de nous ? Et dernière question : mais pourquoi diable ont-il une queue et des oreilles ? Le village de Yamayura est en effet peuplé d’habitants mi-humains, mi-animaux, et vous allez rapidement faire la connaissance de Eruruu, de sa grand-mère, et de sa sœur Aruruu? Des personnages pour l’instant énigmatiques mais rapidement attachants, d’autant qu’ils vont rapidement vous considérer comme faisant partie intégrante de leur famille. Vous allez également faire la connaissance de nombreux autres villageois et villageoises, et le travail réalisé sur chaque protagoniste est très appréciable.\r\nLa partie visual novel de ce remake est exemplaire, et le chara-design de toute beauté. Les décors sont travaillés et colorés, et chaque personnage a ses propres caractéristiques physiques. On s’attache rapidement à tout ce petit monde et nos premières heures seront faites de découvertes. Vous aurez la possibilité de naviguer entre plusieurs lieux pour parler avec les habitants et faire leur connaissance. Le tout reste néanmoins assez bavard, et les premières heures de jeu ne seront faites que de dialogues, en anglais uniquement précisons le. On prend malgré tout beaucoup de plaisir à découvrir les autochtones, mais les problèmes ne vont pas tarder à débouler. L’univers est en tout cas très cohérent, et on en apprend plus sur les croyances de chacun et l’aspect géopolitique de l’ensemble. Toutes ses séquences sont vraiment accrocheuses malgré certaines longueurs, et le tout est accompagné de dialogues en japonais et de très jolies musiques. Vous aurez d’ailleurs le choix entre les pistes originales du jeu de 2002 ou une compilation intégrant des morceaux des derniers opus. Nous avons de notre côté opté pour les musiques d’origine, toutes plus jolies les unes que les autres. On notera d’ailleurs que l’édition physique du jeu propose un CD en bonus (avec la bande son Hymns for The Fallen) ainsi qu’un petit artbook.\r\nOn aurait tendance, après plusieurs heures de dialogues sans réel gameplay, à oublier que le jeu est également un tactical-RPG ! La formule fonctionne ici plutôt bien, et ce remake propose des personnages en 3D à la place des sprites 2D de l’époque. On s’attendait toutefois à mieux, même si cette 3D permet d’intégrer plus facilement cet opus avec les autres plus récents. Après réflexion, on en vient toutefois à se demander s’il était vraiment nécessaire d’opter pour une 3D assez basique dans ses détails et les animations des personnages, et s’il n’aurait pas été plus judicieux de rehausser la qualité des sprites 2D. Difficile donc de parler de véritable remake de ce côté là. Concernant les combats, ceux-ci s’avèrent très accrocheurs et on retrouve les mécaniques classiques des jeux du genre. On déploie et on déplace ses personnages de case en case afin de les positionner au mieux pour la bataille et faire le plus de dégâts à ses adversaires. Il est possible d’attaquer, de se défendre, d’utiliser divers items ou tout simplement de ne rien faire, sachant que les placements sont très importants. Attaquer un ennemi sur le côté ou dans son dos comme un lâche fera évidemment plus de dégâts ! Dans le même ordre d’idée, si vous êtes proche d’un coéquipier, il sera possible de lancer des attaques en coopération, plus puissantes. Le tout est classique mais efficace, et à toutes ces fonctionnalités s’ajoutent des possibilités de combo ou même de rewind pour revenir à un tour précédent. Le jeu n’est donc pas trop punitif comme certains autres titres du genre. Seule la caméra pourra poser quelques soucis, n’étant vraiment pas optimale.', 'Utawarerumono_-Prelude-to-the-Fallen.jpg', '2020-06-04 15:48:15', 1, 2),
(9, 'The Last Of Us Part II : l’Artbook Officiel est en préco chez Omaké Books', 'S’il y a bien un jeu très attendu qui aura fait parler de lui ces derniers mois, c’est The Last of Us Part II. Annoncé, repoussé, décalé à une date indéterminée puis finalement à nouveau daté, le jeu de Naughty Dog sera finalement disponible dès le 19 juin 2020 ! Pour l’occasion, l’éditeur Omaké Books propose aux joueurs un Artbook Officiel, désormais en précommande sur leur site. Edition standard ou édition collector limitée ? Notre cœur balance. On vous laisse découvrir tous les détails du communiqué de presse ainsi que les liens pour vous procurer ce bien bel objet !\r\n« Dans ces 200 pages grand format (232 x 308 mm) entièrement en français, découvrez des centaines de croquis, des travaux préparatoires, des dizaines d’illustrations officielles ou inédites qui ont permis au studio Naughty Dog (les créateurs d’Uncharted, Crash Bandicoot, etc…) de créer cette suite tant attendue du jeu vidéo The Last of Us.\r\n\r\nCet artbook officiel offre une plongée fascinante dans les coulisses de la création de The Last of Us Part II. Il s’agit d’une source incontournable pour découvrir les inspirations et idées diverses de l’équipe de développement, ainsi que l’évolution de protagonistes de cette histoire passionnante. Les explications données par Neil Druckmann, le réalisateur du jeu, ainsi que celles d’Erick Pangilinan et John Sweeney, les directeurs artistiques, font également de cet artbook officiel un véritable making-of visuellement attrayant ! »\r\n\r\nEn ce moment, avec le code promotionnel « FuckCorona », profitez de frais de port à 0,01€ ! (Promo opérationnelle à partir de 15€ d’achat).\r\n\r\n', 'the-last-of-us.jpg', '2020-06-04 15:50:05', 1, 2),
(10, 'Dreamcast : voici une sélection de jeux à posséder sur la console de Sega', 'Elle est sortie en novembre 1998 au Japon, et cela semble s’être passé hier. Ce sont déjà plus de 20 années qui se sont écoulées depuis l’arrivée de la Dreamcast, la dernière console de Sega au succès très modeste qui a valu au constructeur d’arrêter les consoles pour se concentrer sur la création et l’édition de jeux vidéo. La Dreamcast est malheureusement passée inaperçue face à la Playstation 2 de Sony, qui avait tout embarqué sur son passage. Et pourtant, la console de Sega est bourrée de qualités, et beaucoup de joueurs commencent à s’y intéresser aujourd’hui pour rattraper leur retard et leur culture vidéo-ludique, et notamment grâce à la sortie du remaster de Shenmue, qui montre à quel point cette machine en avait dans le bide. Vous découvrez la Dreamcast sur le tard ? Vous aimez déjà follement cette console et vous souhaitez découvrir notre sélection de jeux cultes ? Dans tous les cas, nous vous souhaitons une bonne lecture !\r\n\r\n– Sonic Adventure 1 et 2 –\r\n\r\nOn commence sans plus attendre avec la mascotte de Sega et son hérisson bleu qui avait fait le bonheur des joueurs Megadrive (et un peu moins Sega Saturn). Les jeux Sonic Adventure sur Dreamcast sont remplis de défauts, de bugs de collision, de caméras défaillantes, et pourtant… Ils dégagent une énergie et un fun que l’on n’a quasi jamais retrouvés dans les jeux Sonic récents, hormis un Sonic Generations de bonne facture. Sonic Adventure propose des niveaux ultra speeds, des décors chatoyants et variés, et la possibilité de jouer avec plusieurs personnages pour un poil de diversité. On retrouve une progression classique, des niveaux, des boss, mais le tout est plus riche et s’offre une histoire, des cinématique, et des zones plus ouvertes. Sonic Adventure 2 restera le plus abouti des 2, plus beau et mieux fini. Ce dernier sera d’ailleurs adapté sur Nintendo Gamecube. Notez enfin que les 2 jeux sont rétrocompatibles sur Xbox One, en passant par la case Xbox Live Arcade !\r\n\r\n– Skies of Arcadia –\r\n\r\nBien qu’il soit lui aussi sorti sur Nintendo Gamecube en 2003, c’est bel et bien 3 ans plus tôt que Skies of Arcadia est arrivé sur Dreamcast, le jeu étant édité par Sega. La console a clairement manqué de bons RPG, mais a heureusement proposé aux joueurs quelques pépites ! Skies of Arcadia est sublime graphiquement et propose un univers très original, dans lequel on se déplace sur des bateaux volants pour atteindre des îles perchées dans le ciel. Les personnages sontt attachants et la durée de vie vraiment excellente, avec des combats au tour par tour dans des donjons et la découverte de nombreuses villes. Mention spéciale également à la musique du jeu, superbe ! Une valeur sûre pour les possesseurs de Dreamcast.\r\n\r\n– Dino Crisis –\r\n\r\nShinji Mikami n’est pas seulement le papa de Resident Evil, mais également de Dino Crisis, sorti en 1999 sur PlayStation puis en 2000 sur Dreamcast. La comparaison ne s’arrête pas là, car Dino Crisis reprend le gameplay de Resident Evil, son système d’ouverture de porte ou encore sa mise en scène souvent basée sur le jumpscare (et même le côté ringard des dialogues). Certains ne voient en Dino Crisis qu’un Resident Evil avec des dinosaures, mais le jeu reste marquant et vraiment prenant malgré sa courte durée de vie. Ce que l’on espère aujourd’hui, c’est tout simplement un remake de la trempe de ceux de Resident Evil 2 et 3. Mais en attendant, cette version Dreamcast, plus fine et beaucoup plus propre que son homologue PS1, reste une valeur sûre si on aime les jeux d’horreur ! Le deuxième opus n’est malheureusement pas sorti sur la console de Sega. Quant au troisième, on préférera l’oublier…\r\n\r\n\r\n\r\n', 'sega-dreamcast-les-meilleurs-jeux.jpg', '2020-06-04 15:52:12', 1, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `post` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `author` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
