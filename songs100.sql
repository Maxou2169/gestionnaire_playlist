-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 21 nov. 2022 à 16:07
-- Version du serveur :  10.3.34-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dataset`
--

-- --------------------------------------------------------

--
-- Structure de la table `songs100`
--

CREATE TABLE `songs100` (
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `album` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `artist` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `track` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `genre` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `compilation` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL,
  `playcount` int(11) NOT NULL DEFAULT 0,
  `lastplayed` int(11) DEFAULT NULL,
  `skipcount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `songs100`
--

INSERT INTO `songs100` (`title`, `album`, `artist`, `track`, `year`, `genre`, `compilation`, `length`, `filename`, `filesize`, `playcount`, `lastplayed`, `skipcount`) VALUES
('Anemia', 'Rock', 'Pleymo', 12, 2003, 'Metal; Rock; Nu Metal; Alternative', 0, 215, 'file:///E:/Music/Collection/Pleymo/Rock%20(2003)/12.%20Pleymo%20-%20Anemia.mp3', 5193600, 14, 157652, 5),
('A Is to B as B Is to C', 'Geogaddi', 'Boards of Canada', 17, 2002, 'Electronica; Ambient; Idm; Downtempo; Experimental; Trip-Hop', 0, 100, 'file:///E:/Music/Collection/Boards%20of%20Canada/Geogaddi%20(2002)/17.%20Boards%20of%20Canada%20-%20A%20Is%20to%20B%20as%20B%20Is%20to%20C.mp3', 2284176, 11, 435553, 3),
('Disasterpiece', 'Sugar Ray', 'Sugar Ray', 11, 2001, 'Rock; Pop; Alternative; Alternative Rock; Pop Rock', 0, 178, 'file:///E:/Music/Collection/Sugar%20Ray/Sugar%20Ray%20(2001)/11.%20Sugar%20Ray%20-%20Disasterpiece.mp3', 2907942, 1, -1, 6),
('Missing Link (feat. Common)', 'Fight to Win', 'Femi Kuti', 12, 2001, 'Jazz; Rap; World; Funk', 0, 438, 'file:///E:/Music/Collection/Kuti,%20Femi/Fight%20to%20Win%20(2001)/12.%20Femi%20Kuti%20-%20Missing%20Link%20(feat.%20Common).mp3', 7034976, 5, 618130, 5),
('Take It Off', 'I Get Wet', 'Andrew W.K.', 5, 2001, 'Metal; Rock; Hard Rock; Punk Rock; Alternative; Alternative Metal', 0, 190, 'file:///E:/Music/Collection/W.K.,%20Andrew/I%20Get%20Wet%20(2001)/05.%20Andrew%20W.K.%20-%20Take%20It%20Off.mp3', 3866272, 15, 242338, 1),
('Falling to Pieces', 'Live at the Brixton Academy', 'Faith No More', 1, 1991, 'Alternative And Punk', 0, 287, 'file:///E:/Music/Collection/Faith%20No%20More/Live%20at%20the%20Brixton%20Academy%20(1991)/01.%20Faith%20No%20More%20-%20Falling%20to%20Pieces.mp3', 11499898, 14, 513615, 2),
('The Other Side', 'The Great Shake', 'Planet Funk', 8, 2011, 'Dance; Electronica; Funk; House', 1, 218, 'file:///E:/Music/Collection/Planet%20Funk/The%20Great%20Shake%20(2011)/08.%20Planet%20Funk%20-%20The%20Other%20Side.mp3', 8749013, 8, 791856, 1),
('Manta Ray', 'Complete ‘B’ Sides', 'Pixies', 4, 2001, 'Indie', 0, 159, 'file:///E:/Music/Collection/Pixies/Complete%20\'B\'%20Sides%20(2001)/04.%20Pixies%20-%20Manta%20Ray.mp3', 4441321, 2, -1, 4),
('Madeleine', 'Paris milonga', 'Paolo Conte', 6, 1981, 'Jazz; Piano', 0, 239, 'file:///E:/Music/Collection/Conte,%20Paolo/Paris%20milonga%20(1981)/06.%20Paolo%20Conte%20-%20Madeleine.mp3', 4894147, 5, 289332, 2),
('From Hell', 'Dark Moor', 'Dark Moor', 5, 2003, 'Metal; Symphonic Metal; Heavy Metal', 0, 231, 'file:///E:/Music/Collection/Dark%20Moor/Dark%20Moor%20(2003)/05.%20Dark%20Moor%20-%20From%20Hell.mp3', 5582544, 16, 16235, 8),
('Shadow of Deth', 'The System Has Failed', 'Megadeth', 11, 2004, 'Metal; Thrash Metal; Heavy Metal', 0, 135, 'file:///E:/Music/Collection/Megadeth/The%20System%20Has%20Failed%20(2004)/11.%20Megadeth%20-%20Shadow%20of%20Deth.mp3', 4772383, 11, 250825, 3),
('Pulque, Mescal y Tequila', 'Paris-Zénith', 'Hubert-Félix Thiéfaine', 8, 1995, 'Rock', 0, 397, 'file:///E:/Music/Collection/Thiefaine,%20Hubert-Felix/Paris-Zenith%20(disc%201)%20(1995)/08.%20Hubert-Felix%20Thiefaine%20-%20Pulque,%20Mescal%20y%20Tequila.mp3', 6391741, 12, -1, 4),
('LoLines', 'Banks of Eden', 'The Flower Kings', 4, 2012, 'Rock; Progressive Rock; Progressive', 0, 264, 'file:///E:/Music/Collection/Flower%20Kings,%20The/Banks%20of%20Eden%20(disc%202)%20(2012)/04.%20The%20Flower%20Kings%20-%20LoLines.mp3', 10594859, 13, 175063, 8),
('Slipping Husband', 'Sad Songs for Dirty Lovers', 'The National', 2, 2003, 'Indie; Rock; Indie Rock; Alternative; Alternative Rock', 0, 202, 'file:///E:/Music/Collection/National,%20The/Sad%20Songs%20for%20Dirty%20Lovers%20(2003)/02.%20The%20National%20-%20Slipping%20Husband.mp3', 6116968, 14, 16677, 4),
('Les Cendres de Cassandre', 'Et hep !', 'Les Tit\' Nassels', 3, 2000, 'Unknown', 0, 239, 'file:///E:/Music/Collection/Tit\'%20Nassels,%20Les/Et%20hep%20!%20(2000)/03.%20Les%20Tit\'%20Nassels%20-%20Les%20Cendres%20de%20Cassandre.mp3', 3832353, 12, -1, 2),
('If You\'re Not Scared', 'Cocoon Crash', 'K\'s Choice', 6, 1998, 'Rock; Indie; Alternative; Alternative Rock; Indie Pop', 1, 197, 'file:///E:/Music/Collection/K\'s%20Choice/Cocoon%20Crash%20(1998)/06.%20K\'s%20Choice%20-%20If%20You\'re%20Not%20Scared.mp3', 3161690, 3, 46442, 6),
('The Plan', 'Keep It Like a Secret', 'Built to Spill', 1, 1999, 'Indie; Rock; Indie Rock; Alternative; Indie Pop; Alternative Rock', 0, 209, 'file:///E:/Music/Collection/Built%20to%20Spill/Keep%20It%20Like%20a%20Secret%20(1999)/01.%20Built%20to%20Spill%20-%20The%20Plan.mp3', 5687989, 5, 731880, 4),
('A Final Hit', 'Trainspotting', 'Leftfield', 12, 1996, 'Electronica; Dance; Techno; Downtempo; Ambient; Lounge; Trip-Hop; Instrumental', 1, 196, 'file:///E:/Music/Collection/Various%20Artists/Trainspotting%20(1996)/12.%20Leftfield%20-%20A%20Final%20Hit.mp3', 3196184, 11, 221547, 6),
('Operation: Mind Control', 'Collideøscope', 'Living Colour', 3, 2003, 'Rock; Metal; Hard Rock; Funk Rock; Funk Metal; Alternative; Funk; Alternative Rock', 0, 190, 'file:///E:/Music/Collection/Living%20Colour/Collideoscope%20(2003)/03.%20Living%20Colour%20-%20Operation_%20Mind%20Control.mp3', 4590062, 5, 59140, 8),
('Lately', 'Song Review: A Greatest Hits Collection', 'Stevie Wonder', 11, 1996, 'Soul; Pop; Funk; Motown', 1, 245, 'file:///E:/Music/Collection/Wonder,%20Stevie/Song%20Review_%20A%20Greatest%20Hits%20Collection%20(1996)/11.%20Stevie%20Wonder%20-%20Lately.mp3', 3970478, 6, -1, 6),
('Time Is the Avenger', 'Shadowland', 'Dark Moor', 7, 2000, 'Metal; Symphonic Metal', 0, 431, 'file:///E:/Music/Collection/Dark%20Moor/Shadowland%20(2000)/07.%20Dark%20Moor%20-%20Time%20Is%20the%20Avenger.mp3', 8698076, 4, 228171, 1),
('Andúril', 'The Lord of the Rings: The Return of the King', 'Howard Shore', 10, 2003, 'Classical; Instrumental; Composers; Orchestral', 0, 155, 'file:///E:/Music/Collection/Shore,%20Howard/The%20Lord%20of%20the%20Rings_%20The%20Return%20of%20the%20King%20(2003)/10.%20Howard%20Shore%20-%20Anduril.mp3', 3734585, 6, 166108, 4),
('Restless Farewell', 'Satisfied Mind', 'Joan Baez', 5, 1979, 'Folk; Pop', 0, 352, 'file:///E:/Music/Collection/Baez,%20Joan/Satisfied%20Mind%20(disc%204)%20(1979)/05.%20Joan%20Baez%20-%20Restless%20Farewell.mp3', 5629118, 13, 902049, 4),
('I Think I Lost My Headache', 'R', 'Queens of the Stone Age', 12, 2007, 'Rock; Stoner Rock; Alternative Rock; Alternative; Psychedelic; Psychedelic Rock; Hard Rock', 0, 520, 'file:///E:/Music/Collection/Queens%20of%20the%20Stone%20Age/R%20(2007)/12.%20Queens%20of%20the%20Stone%20Age%20-%20I%20Think%20I%20Lost%20My%20Headache.mp3', 10411164, 14, 18549, 6),
('Song to the Siren', 'Singles 93-03', 'The Chemical Brothers', 1, 2003, 'Electronica; Dance; Techno; Trip-Hop; Breakbeat; House; Electro', 0, 273, 'file:///E:/Music/Collection/Chemical%20Brothers,%20The/Singles%2093-03%20(disc%201)%20(2003)/01.%20The%20Chemical%20Brothers%20-%20Song%20to%20the%20Siren.mp3', 6572473, 3, 756216, 1),
('Frank', 'The Ultra Zone', 'Steve Vai', 4, 1999, 'Instrumental Rock', 0, 309, 'file:///E:/Music/Collection/Vai,%20Steve/The%20Ultra%20Zone%20(1999)/04.%20Steve%20Vai%20-%20Frank.mp3', 6261229, 15, 242435, 7),
('Last Train', 'The Invisible Band', 'Travis', 9, 2001, 'Indie; Rock; Alternative; Indie Rock; Indie Pop; Alternative Rock; Brit Pop', 0, 196, 'file:///E:/Music/Collection/Travis/The%20Invisible%20Band%20(2001)/09.%20Travis%20-%20Last%20Train.mp3', 4817143, 9, 444729, 7),
('Farmsex.com', 'Neurophonie', 'Micropoint', 14, 1998, 'Hardcore', 0, 233, 'file:///E:/Music/Collection/Micropoint/Neurophonie%20(1998)/14.%20Micropoint%20-%20Farmsex.com.mp3', 3754498, 6, -1, 1),
('Victim of Fate', 'The Keepers of Jericho: A Tribute to Helloween', 'Squealer A.D.', 11, 2000, 'Metal; Thrash Metal', 1, 343, 'file:///E:/Music/Collection/Various%20Artists/The%20Keepers%20of%20Jericho_%20A%20Tribute%20to%20Helloween%20(2000)/11.%20Squealer%20A.D.%20-%20Victim%20of%20Fate.mp3', 6894855, 0, 616782, 4),
('Common People (live at Glastonbury 1995)', 'Different Class', 'Pulp', 1, 2006, 'Indie; Rock; Alternative', 0, 459, 'file:///E:/Music/Collection/Pulp/Different%20Class%20(disc%202)%20(2006)/01.%20Pulp%20-%20Common%20People%20(live%20at%20Glastonbury%201995).mp3', 11057039, 9, 189038, 0),
('Leave It Alone', '4 Never Satisfied Friends', 'Living Colour', 2, -1, 'Rock; Metal; Funk Metal; Hard Rock; Funk Rock; Heavy Metal; Alternative; Alternative Rock', 0, 182, 'file:///E:/Music/Collection/Living%20Colour/4%20Never%20Satisfied%20Friends/02.%20Living%20Colour%20-%20Leave%20It%20Alone.mp3', 4381124, 0, 881469, 0),
('The Beginning', 'Stanley Climbfall', 'Lifehouse', 12, 2002, 'Rock; Indie; Alternative Rock; Alternative; Pop Rock', 0, 277, 'file:///E:/Music/Collection/Lifehouse/Stanley%20Climbfall%20(2002)/12.%20Lifehouse%20-%20The%20Beginning.mp3', 6673501, 8, 405508, 7),
('Velvet Darkness They Fear', 'Velvet Darkness They Fear', 'Theatre of Tragedy', 1, 1996, 'Metal; Rock; Gothic Metal; Instrumental; Doom Metal; Heavy Metal; Gothic; Emo', 0, 66, 'file:///E:/Music/Collection/Theatre%20of%20Tragedy/Velvet%20Darkness%20They%20Fear%20(1996)/01.%20Theatre%20of%20Tragedy%20-%20Velvet%20Darkness%20They%20Fear.mp3', 1115189, 3, 466263, 1),
('Dandelion', 'Out of Exile', 'Audioslave', 10, 2005, 'Rock; Alternative Rock; Hard Rock; Alternative; Grunge', 0, 278, 'file:///E:/Music/Collection/Audioslave/Out%20of%20Exile%20(2005)/10.%20Audioslave%20-%20Dandelion.mp3', 8261307, 4, 884933, 4),
('Rain King', 'Daydream Nation', 'Sonic Youth', 10, 1988, 'Rock; Indie; Alternative; Grunge; Experimental; Alternative Rock; Noise; Avant-Garde', 0, 280, 'file:///E:/Music/Collection/Sonic%20Youth/Daydream%20Nation%20(1988)/10.%20Sonic%20Youth%20-%20Rain%20King.mp3', 6724712, 14, 668008, 0),
('Bullet in the Head', '30 Songs for a Revolution', 'Rage Against the Machine', 7, 2002, 'Rock; Metal; Alternative Rock; Alternative; Hard Rock; Crossover; Rap Metal; Alternative Metal', 0, 312, 'file:///E:/Music/Collection/Rage%20Against%20the%20Machine/30%20Songs%20for%20a%20Revolution%20(disc%201)%20(2002)/07.%20Rage%20Against%20the%20Machine%20-%20Bullet%20in%20the%20Head.mp3', 7486991, 10, 53733, 0),
('Laichzeit', 'Live at the Max: Amsterdam 1997', 'Rammstein', 14, 1997, 'Metal; Rock; Industrial Metal; Industrial; Industrial Rock; Hard Rock', 0, 289, 'file:///E:/Music/Collection/Rammstein/Live%20at%20the%20Max_%20Amsterdam%201997/14.%20Rammstein%20-%20Laichzeit.mp3', 6448211, 12, 397911, 1),
('Criminally Insane', 'Reign In Blood', 'Slayer', 6, 1998, 'Metal; Thrash Metal; Heavy Metal', 0, 143, 'file:///E:/Music/Collection/Slayer/Reign%20In%20Blood%20(1998)/06.%20Slayer%20-%20Criminally%20Insane.mp3', 3490299, 8, -1, 0),
('Les Papous', 'Du rire aux larmes', 'Bourvil', 19, 1990, 'Humour', 1, 206, 'file:///E:/Music/Collection/Bourvil/Du%20rire%20aux%20larmes%20(disc%201)%20(1990)/19.%20Bourvil%20-%20Les%20Papous.mp3', 6607480, 11, 810852, 6),
('One Million', 'Vehicles & Animals', 'Athlete', 3, 2003, 'Indie; Rock; Indie Rock; Brit Rock; Alternative; Alternative Rock', 0, 257, 'file:///E:/Music/Collection/Athlete/Vehicles%20&%20Animals%20(2003)/03.%20Athlete%20-%20One%20Million.mpc', 6871119, 11, 737705, 4),
('Miss Blue', 'Title of Record', 'Filter', 11, 1999, 'Rock; Metal; Alternative Rock; Industrial; Industrial Rock; Alternative; Hard Rock; Industrial Metal', 0, 336, 'file:///E:/Music/Collection/Filter/Title%20of%20Record%20(1999)/11.%20Filter%20-%20Miss%20Blue.mp3', 5415613, 8, 517956, 3),
('And the Boys', 'Down the Way', 'Angus & Julia Stone', 7, 2010, 'Folk; Indie; Acoustic; Indie Folk', 0, 249, 'file:///E:/Music/Collection/Stone,%20Angus%20&%20Stone,%20Julia/Down%20the%20Way%20(2010)/07.%20Angus%20&%20Julia%20Stone%20-%20And%20the%20Boys.mp3', 5261000, 7, 799226, 6),
('Mundo', 'Act. 1', 'Sporto Kantès', 5, 2005, 'Trip-Hop; Downtempo; Acid Jazz; Lounge; Electro', 0, 229, 'file:///E:/Music/Collection/Sporto%20Kantes/Act.%201%20(2005)/05.%20Sporto%20Kantes%20-%20Mundo.mpc', 5921535, 7, 268483, 5),
('Tomorrow Morning', 'On and On', 'Jack Johnson', 10, 2003, 'Rock; Folk; Acoustic; Alternative; New Age; Acoustic Rock', 0, 171, 'file:///E:/Music/Collection/Johnson,%20Jack/On%20and%20On%20(2003)/10.%20Jack%20Johnson%20-%20Tomorrow%20Morning.mp3', 4126370, 14, 69167, 3),
('Trilogy Suite Op. 5: The First Movement', 'G3: Rockin\' in the Free World', 'Yngwie J. Malmsteen', 10, 2004, 'Metal; Heavy Metal; Instrumental; Hard Rock', 1, 487, 'file:///E:/Music/Collection/G3/G3_%20Rockin\'%20in%20the%20Free%20World%20(disc%201)%20(2004)/10.%20Yngwie%20J.%20Malmsteen%20-%20Trilogy%20Suite%20Op.%205_%20The%20First%20Movement.mp3', 9803768, 7, 280445, 2),
('Yardie Bone (feat. Wayne Marshall)', 'The Trinity', 'Sean Paul', 8, 2005, 'Reggae; Hip-Hop; Dancehall; Rap', 0, 192, 'file:///E:/Music/Collection/Paul,%20Sean/The%20Trinity%20(2005)/08.%20Sean%20Paul%20-%20Yardie%20Bone%20(feat.%20Wayne%20Marshall).mp3', 4286691, 8, 374831, 7),
('Papercut', 'Live in Texas', 'Linkin Park', 3, 2003, 'Rock; Metal; Nu Metal; Alternative Rock; Alternative; Hard Rock', 0, 186, 'file:///E:/Music/Collection/Linkin%20Park/Live%20in%20Texas%20(2003)/03.%20Linkin%20Park%20-%20Papercut.mp3', 4515485, 0, 130522, 8),
('Mission', 'Bricolage', 'Amon Tobin', 14, 1997, 'Electronica; Jazz; Idm; Drum And Bass; Downtempo; Trip-Hop; Experimental; Ambient', 0, 428, 'file:///E:/Music/Collection/Tobin,%20Amon/Bricolage%20(1997)/14.%20Amon%20Tobin%20-%20Mission.mp3', 10934409, 10, -1, 0),
('Sign of the Times', 'The Art of Live', 'Queensrÿche', 2, 2004, 'Rock; Metal; Hard Rock; Heavy Metal; Progressive Rock', 0, 219, 'file:///E:/Music/Collection/Queensryche/The%20Art%20of%20Live%20(2004)/02.%20Queensryche%20-%20Sign%20of%20the%20Times.mp3', 5296993, 8, 316502, 1),
('Sunset Spirals (Rune Lindbæk remix)', 'Sunset Spirals EP', 'Xploding Plastix', 3, 2003, 'Electronica; Jazz; Acid Jazz; Downtempo; Trip-Hop; Idm', 0, 275, 'file:///E:/Music/Collection/Xploding%20Plastix/Sunset%20Spirals%20EP%20(2003)/03.%20Xploding%20Plastix%20-%20Sunset%20Spirals%20(Rune%20Lindbaek%20remix).mp3', 6787119, 2, 138122, 1),
('Closer', 'The Sunny Side of the Moon: The Best of Richard Cheese', 'Richard Cheese', 5, 2006, 'Jazz; Lounge; Swing', 0, 140, 'file:///E:/Music/Collection/Cheese,%20Richard/The%20Sunny%20Side%20of%20the%20Moon_%20The%20Best%20of%20Richard%20Cheese%20(2006)/05.%20Richard%20Cheese%20-%20Closer.mp3', 3589318, 0, 646668, 6),
('Always With Me, Always With You', 'Time Machine', 'Joe Satriani', 7, 1993, 'Instrumental Rock', 0, 220, 'file:///E:/Music/Collection/Satriani,%20Joe/Time%20Machine%20(disc%202)%20(1993)/07.%20Joe%20Satriani%20-%20Always%20With%20Me,%20Always%20With%20You.mp3', 4461058, 2, 179741, 5),
('BU2B', 'Clockwork Angels', 'Rush', 2, 2012, 'Classic Rock; Rock; Progressive Rock; Hard Rock; Progressive', 0, 310, 'file:///E:/Music/Collection/Rush/Clockwork%20Angels%20(2012)/02.%20Rush%20-%20BU2B.mp3', 12434109, 5, 623473, 7),
('Don\'t Let Me Be Misunderstood / Esmeralda Suite', 'Kill Bill: Vol. 1', 'Santa Esmeralda', 10, 2003, 'Rock; Classic Rock; Latin; Disco', 1, 628, 'file:///E:/Music/Collection/Various%20Artists/Kill%20Bill_%20Vol.%201%20(2003)/10.%20Santa%20Esmeralda%20-%20Don\'t%20Let%20Me%20Be%20Misunderstood%20%20Esmeralda%20Suite.mp3', 15116275, 0, 287185, 1),
('Mireille', 'Le Meilleur de Dick Annegarn', 'Dick Annegarn', 10, 2000, '', 0, 117, 'file:///E:/Music/Collection/Annegarn,%20Dick/Le%20Meilleur%20de%20Dick%20Annegarn%20(2000)/10.%20Dick%20Annegarn%20-%20Mireille.mp3', 2407327, 3, 776351, 4),
('I\'ve Done My Best', 'Ratata', 'Arno', 5, 1990, 'Rock; Alternative', 0, 233, 'file:///E:/Music/Collection/Arno/Ratata%20(1990)/05.%20Arno%20-%20I\'ve%20Done%20My%20Best.mp3', 4698122, 4, -1, 2),
('Mass Hypnosis', 'Under Siege Live in Barcelona', 'Sepultura', 5, 1991, 'Ethno / Thrash Métal', 0, 262, 'file:///E:/Music/Collection/Sepultura/Under%20Siege%20Live%20in%20Barcelona/05.%20Sepultura%20-%20Mass%20Hypnosis.mp3', 5247525, 0, 826463, 7),
('À flanc de certitudes', 'Le sacre des Lemmings et autres contes de la lisière', 'Tété', 10, 2006, 'Folk; Pop; Acoustic', 0, 193, 'file:///E:/Music/Collection/Tete/Le%20sacre%20des%20Lemmings%20et%20autres%20contes%20de%20la%20lisiere%20(2006)/10.%20Tete%20-%20A%20flanc%20de%20certitudes.mp3', 3140288, 13, 671897, 7),
('Lightnin\' Hopkins', 'Document', 'R.E.M.', 9, 1997, 'Rock; Indie; Alternative Rock; Jangle Pop; Alternative', 0, 201, 'file:///E:/Music/Collection/R.E.M_/Document%20(1997)/09.%20R.E.M.%20-%20Lightnin\'%20Hopkins.mp3', 4897366, 11, 745482, 4),
('Tokyo Eye', 'Experimental Jet Set, Trash and No Star', 'Sonic Youth', 12, 1994, 'Rock; Indie; Alternative Rock; Alternative; Indie Rock; Experimental; Progressive Rock; Grunge', 0, 235, 'file:///E:/Music/Collection/Sonic%20Youth/Experimental%20Jet%20Set,%20Trash%20and%20No%20Star%20(1994)/12.%20Sonic%20Youth%20-%20Tokyo%20Eye.mp3', 5678388, 1, -1, 4),
('Printemps', '5', 'Mes Souliers Sont Rouges', 9, 2004, 'Folk; Folk Rock', 0, 313, 'file:///E:/Music/Collection/Mes%20Souliers%20Sont%20Rouges/5%20(2004)/09.%20Mes%20Souliers%20Sont%20Rouges%20-%20Printemps.mp3', 7584055, 0, 697939, 2),
('The Geese of Beverly Road', 'Alligator', 'The National', 11, 2005, 'Indie; Rock; Indie Rock; Alternative Rock; Alternative; Atmospheric', 0, 296, 'file:///E:/Music/Collection/National,%20The/Alligator%20(2005)/11.%20The%20National%20-%20The%20Geese%20of%20Beverly%20Road.mp3', 7323960, 16, 74055, 2),
('Life Is Sweet', 'Exit Planet Dust', 'The Chemical Brothers', 9, 1995, 'Electronica; Dance; Techno; Breakbeat', 0, 393, 'file:///E:/Music/Collection/Chemical%20Brothers,%20The/Exit%20Planet%20Dust%20(1995)/09.%20The%20Chemical%20Brothers%20-%20Life%20Is%20Sweet.mp3', 6318837, 14, -1, 3),
('Moneytalks', 'The Razors Edge', 'AC/DC', 3, 1990, 'Classic Rock', 0, 226, 'file:///E:/Music/Collection/ACDC/The%20Razors%20Edge%20(1990)/03.%20ACDC%20-%20Moneytalks.mp3', 9083503, 10, 935449, 5),
('Invalid Litter Dept.', 'Relationship of Command', 'At the Drive-In', 5, 2000, 'Rock; Indie; Alternative; Alternative Rock; Indie Rock; Hardcore; Progressive Rock; Emo', 1, 365, 'file:///E:/Music/Collection/At%20the%20Drive-In/Relationship%20of%20Command%20(2000)/05.%20At%20the%20Drive-In%20-%20Invalid%20Litter%20Dept..mp3', 5945726, 15, 569527, 8),
('Saucisson de cheval n°1', 'L\'Intégrale', 'Boby Lapointe', 1, 1998, 'Humour', 0, 169, 'file:///E:/Music/Collection/Lapointe,%20Boby/L\'Integrale%20(disc%202)%20(1998)/01.%20Boby%20Lapointe%20-%20Saucisson%20de%20cheval%20n_1.mp3', 4088967, 5, -1, 2),
('Nailed to the Wheel', 'Mandrake', 'Edguy', 5, 2001, 'Metal; Heavy Metal', 0, 339, 'file:///E:/Music/Collection/Edguy/Mandrake%20(2001)/05.%20Edguy%20-%20Nailed%20to%20the%20Wheel.mp3', 8196817, 14, 543779, 5),
('Breed Apart', 'Under a Pale Grey Sky', 'Sepultura', 6, 2002, 'Metal', 0, 241, 'file:///E:/Music/Collection/Sepultura/Under%20a%20Pale%20Grey%20Sky%20(disc%201)%20(2002)/06.%20Sepultura%20-%20Breed%20Apart.mp3', 6473492, 11, -1, 1),
('Allison', 'Death to the Pixies', 'Pixies', 11, 1997, 'Rock; Indie; Alternative Rock; Alternative; Indie Rock; Grunge', 0, 75, 'file:///E:/Music/Collection/Pixies/Death%20to%20the%20Pixies%20(disc%202)%20(1997)/11.%20Pixies%20-%20Allison.mp3', 2379005, 15, 284237, 5),
('The Metal Age', 'Glory to the Brave', 'HammerFall', 2, 1997, 'Metal; Heavy Metal; Symphonic Metal', 0, 269, 'file:///E:/Music/Collection/HammerFall/Glory%20to%20the%20Brave%20(1997)/02.%20HammerFall%20-%20The%20Metal%20Age.mp3', 5431909, 0, 108804, 1),
('Through a Long & Sleepless Night', 'Casanova', 'The Divine Comedy', 9, 1996, 'Uk', 0, 372, 'file:///E:/Music/Collection/Divine%20Comedy,%20The/Casanova%20(1996)/09.%20The%20Divine%20Comedy%20-%20Through%20a%20Long%20&%20Sleepless%20Night.mp3', 5988721, 4, 463972, 2),
('Run (The Name of Your Enemy)', 'Mrs. God', 'Helloween', 3, 2005, 'Metal; Heavy Metal', 0, 251, 'file:///E:/Music/Collection/Helloween/Mrs.%20God/03.%20Helloween%20-%20Run%20(The%20Name%20of%20Your%20Enemy).mp3', 6736079, 6, 70764, 3),
('Ya Kelbi', 'Deb', 'سعاد ماسي‎', 3, 2003, 'World', 0, 259, 'file:///E:/Music/Collection/Massi,%20Souad/Deb%20(2003)/03.%20____%20_____%20-%20Ya%20Kelbi.mp3', 5221054, 3, 135942, 0),
('Domingo (feat. Jimi Santos)', 'Lunático', 'Gotan Project', 11, 2006, 'Electronica; Jazz; Tango; Lounge; Downtempo; Trip-Hop', 0, 253, 'file:///E:/Music/Collection/Gotan%20Project/Lunatico%20(2006)/11.%20Gotan%20Project%20-%20Domingo%20(feat.%20Jimi%20Santos).mp3', 6374907, 10, 566613, 4),
('Sadly Sings Destiny', 'A Night at the Opera', 'Blind Guardian', 4, 2002, 'Epic Metal', 0, 365, 'file:///E:/Music/Collection/Blind%20Guardian/A%20Night%20at%20the%20Opera%20(2002)/04.%20Blind%20Guardian%20-%20Sadly%20Sings%20Destiny.mp3', 7303455, 15, 689879, 2),
('Les Chemins de traverse', 'L\'Essentiel - 1977-2007', 'Francis Cabrel', 3, 2007, 'Rock; Pop; Guitar', 0, 183, 'file:///E:/Music/Collection/Cabrel,%20Francis/L\'Essentiel%20-%201977-2007%20(disc%201)%20(2007)/03.%20Francis%20Cabrel%20-%20Les%20Chemins%20de%20traverse.mp3', 6190419, 12, 787242, 5),
('Becalmed', 'Dodesukaden', 'Pascals', 3, 2005, 'Pop; Folk; Avant-Garde; Alternative; Experimental', 0, 398, 'file:///E:/Music/Collection/Pascals/Dodesukaden%20(2005)/03.%20Pascals%20-%20Becalmed.mp3', 9770727, 14, 673312, 3),
('Mo-wan\'s Dialogue', 'In the Mood for Love', '[dialogue]', 2, 2001, 'Soundtrack', 1, 10, 'file:///E:/Music/Collection/Various%20Artists/In%20the%20Mood%20for%20Love%20(2001)/02.%20%5Bdialogue%5D%20-%20Mo-wan\'s%20Dialogue.mp3', 241092, 2, 863548, 2),
('Velocity', 'Masterpiece, Volume 5: The Ultimate Disco Funk Collection', 'Kopper', 7, 2007, '', 1, 286, 'file:///E:/Music/Collection/Various%20Artists/Masterpiece,%20Volume%205_%20The%20Ultimate%20Disco%20Funk%20Collection%20(2007)/07.%20Kopper%20-%20Velocity.mp3', 8163167, 11, 298040, 4),
('Ghost Opera', 'Ghost Opera', 'Kamelot', 3, 2007, 'Metal; Symphonic Metal', 0, 246, 'file:///E:/Music/Collection/Kamelot/Ghost%20Opera%20(2007)/03.%20Kamelot%20-%20Ghost%20Opera.mp3', 7119786, 6, 891019, 3),
('Hooligan', 'Gitan de Paname', 'Balbino Medellin', 5, 2006, 'Rock', 0, 239, 'file:///E:/Music/Collection/Medellin,%20Balbino/Gitan%20de%20Paname%20(2006)/05.%20Balbino%20Medellin%20-%20Hooligan.mp3', 5817246, 7, 859865, 7),
('Superunknown', 'Superunknown', 'Soundgarden', 5, 1994, 'Rock; Grunge; Alternative Rock; Alternative; Hard Rock', 0, 306, 'file:///E:/Music/Collection/Soundgarden/Superunknown%20(1994)/05.%20Soundgarden%20-%20Superunknown.mp3', 4905734, 7, 704943, 1),
('So Many Millions', 'The Reality of My Surroundings', 'Fishbone', 3, 1991, 'Rock; Reggae; Funk; Funk Rock; Alternative; Groove; Crossover; Ska', 0, 350, 'file:///E:/Music/Collection/Fishbone/The%20Reality%20of%20My%20Surroundings%20(1991)/03.%20Fishbone%20-%20So%20Many%20Millions.mp3', 5612624, 14, 507485, 5),
('Hunter', 'No Angel', 'Dido', 2, 1999, 'Pop; Alternative', 0, 237, 'file:///E:/Music/Collection/Dido/No%20Angel%20(1999)/02.%20Dido%20-%20Hunter.mp3', 4776149, 5, -1, 8),
('Saint-Petersbourg', 'God Blesse', 'Saez', 6, 2002, 'Rock; Alternative', 0, 211, 'file:///E:/Music/Collection/Saez/God%20Blesse%20(disc%202)%20(2002)/06.%20Saez%20-%20Saint-Petersbourg.mp3', 5091106, 14, 697000, 8),
('Night Owls', 'Throbbing Pouch', 'Wagon Christ', 12, 1995, 'Trip Hop / Electronic / Breakbeat', 0, 160, 'file:///E:/Music/Collection/Wagon%20Christ/Throbbing%20Pouch%20(1995)/12.%20Wagon%20Christ%20-%20Night%20Owls.ogg', 3066175, 0, -1, 6),
('Prix Choc', 'Les Inrockuptibles présentent : 20 ans, 100 chansons', 'Superdiscount', 2, 2006, 'Jazz; House; Downtempo; Lounge; Electro; Breakbeat', 1, 518, 'file:///E:/Music/Collection/Various%20Artists/Les%20Inrockuptibles%20presentent%20_%2020%20ans,%20100%20chansons%20(disc%204)%20(2006)/02.%20Superdiscount%20-%20Prix%20Choc.mp3', 12507254, 10, 35781, 0),
('Blacking Out the Friction', 'The Photo Album', 'Death Cab for Cutie', 6, 2001, 'Indie; Rock; Indie Rock; Alternative; Emo; Indie Pop; Alternative Rock', 0, 207, 'file:///E:/Music/Collection/Death%20Cab%20for%20Cutie/The%20Photo%20Album%20(2001)/06.%20Death%20Cab%20for%20Cutie%20-%20Blacking%20Out%20the%20Friction.mp3', 5018700, 2, 154236, 7),
('Draconian Trilogy, Part 3: Black Diamonds', 'Vovin', 'Therion', 10, 1998, 'Symphonic Rock / Rock / Heavy Metal / Doom Metal / Classical', 0, 177, 'file:///E:/Music/Collection/Therion/Vovin%20(1998)/10.%20Therion%20-%20Draconian%20Trilogy,%20Part%203_%20Black%20Diamonds.mp3', 2862865, 10, -1, 6),
('Winter: Southern Hospitality', 'Requiem for a Dream', 'Clint Mansell', 26, 2000, 'Classical; Instrumental; Ambient', 1, 83, 'file:///E:/Music/Collection/Mansell,%20Clint/Requiem%20for%20a%20Dream%20(2000)/26.%20Clint%20Mansell%20-%20Winter_%20Southern%20Hospitality.mp3', 1336284, 13, 37447, 6),
('Act I: Scene Five: Through Her Eyes', 'Metropolis, Part 2: Scenes From a Memory', 'Dream Theater', 7, 1999, 'Metal; Rock; Progressive Rock; Progressive; Heavy Metal; Hard Rock', 0, 329, 'file:///E:/Music/Collection/Dream%20Theater/Metropolis,%20Part%202_%20Scenes%20From%20a%20Memory%20(1999)/07.%20Dream%20Theater%20-%20Act%20I_%20Scene%20Five_%20Through%20Her%20Eyes.mp3', 5284428, 11, 194118, 3),
('Sweat', 'Booty and the Beast', 'Popa Chubby', 14, 1995, 'Blues', 0, 352, 'file:///E:/Music/Collection/Chubby,%20Popa/Booty%20and%20the%20Beast%20(1995)/14.%20Popa%20Chubby%20-%20Sweat.mp3', 7087388, 16, 206248, 5),
('L\'aquarium tactile', 'Never Trust a Guy Who After Having Been a Punk, Is Now Playing Electro', 'Les Wampas', 14, 2003, 'Punk; Rock; Psychobilly; Punk Rock; Rockabilly', 0, 158, 'file:///E:/Music/Collection/Wampas,%20Les/Never%20Trust%20a%20Guy%20Who%20After%20Having%20Been%20a%20Punk,%20Is%20Now%20Playing%20Electro%20(2003)/14.%20Les%20Wampas%20-%20L\'aquarium%20tactile.mp3', 3195988, 15, 379511, 7),
('Walk Away (Maybe)', 'The Chronicles of Life and Death', 'Good Charlotte', 3, 2004, 'Rock; Punk; Punk Rock; Pop Punk; Alternative; Alternative Rock; Pop Rock; Nu Metal', 0, 203, 'file:///E:/Music/Collection/Good%20Charlotte/The%20Chronicles%20of%20Life%20and%20Death%20(2004)/03.%20Good%20Charlotte%20-%20Walk%20Away%20(Maybe).mp3', 3246961, 0, 664918, 1),
('Alone', 'Lost Dogs', 'Pearl Jam', 7, 2003, 'Rock; Grunge; Alternative; Alternative Rock; Hard Rock', 0, 192, 'file:///E:/Music/Collection/Pearl%20Jam/Lost%20Dogs%20(2003)/07.%20Pearl%20Jam%20-%20Alone.mp3', 4649582, 15, 702026, 8),
('I\'m Telling Tim', 'So Long and Thanks for All the Shoes', 'NOFX', 8, 1997, 'Punk; Rock; Punk Rock; Ska Punk; Ska; Pop Punk', 0, 77, 'file:///E:/Music/Collection/NOFX/So%20Long%20and%20Thanks%20for%20All%20the%20Shoes%20(1997)/08.%20NOFX%20-%20I\'m%20Telling%20Tim.mp3', 1236033, 4, 803951, 5),
('Bees & Butterflies (Down)', 'From Here to There', 'Girls in Hawaii', 11, 2004, 'Folk; Indie; Indie Pop; Alternative; Indie Rock', 0, 209, 'file:///E:/Music/Collection/Girls%20in%20Hawaii/From%20Here%20to%20There%20(2004)/11.%20Girls%20in%20Hawaii%20-%20Bees%20&%20Butterflies%20(Down).mp3', 6747504, 6, 621856, 8),
('State of Shock', 'State of Shock', 'Ted Nugent', 5, 1979, 'Rock', 0, 186, 'file:///E:/Music/Collection/Nugent,%20Ted/State%20of%20Shock%20(1979)/05.%20Ted%20Nugent%20-%20State%20of%20Shock.mp3', 3714386, 4, 671676, 2),
('Spark of the Divine', 'Shape Shifter', 'Santana', 8, 2012, 'Rock; Classic Rock; Latin; Guitar', 0, 62, 'file:///E:/Music/Collection/Santana/Shape%20Shifter%20(2012)/08.%20Santana%20-%20Spark%20of%20the%20Divine.mp3', 2591101, 7, 891275, 5),
('Stain', 'Incesticide', 'Nirvana', 3, 1992, 'Rock; Grunge; Alternative; Alternative Rock', 0, 161, 'file:///E:/Music/Collection/Nirvana/Incesticide%20(1992)/03.%20Nirvana%20-%20Stain.mp3', 3899143, 15, -1, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
