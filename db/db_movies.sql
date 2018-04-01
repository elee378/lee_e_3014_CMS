-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2018 at 11:07 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'justiceleague.jpg', 'Justice League', '2017', '2h 16m', 'Fueled by his restored faith in humanity and inspired by Superman\'s selfless act, Bruce Wayne enlists newfound ally Diana Prince to face an even greater threat. Together, Batman and Wonder Woman work quickly to recruit a team to stand against this newly awakened enemy. ', 'justiceleague.mp4', 'November 15, 2017'),
(2, 'savingprivateryan.jpg', 'Saving Private Ryan', '1998', '2h 46m', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'savingprivateryan.mp4', 'July 24, 1998'),
(3, 'thewolverine.jpg', 'The Wolverine', '2013', '2h 18m', 'Lured to a Japan he hasn\'t seen since World War II, century-old mutant Wolverine (Hugh Jackman) finds himself in a shadowy realm of yakuza and samurai.', 'thewolverine.mp4', 'July 26, 2013'),
(4, 'traintobusan.jpg', 'Train To Busan', '2016', '1h 45m', 'A man (Gong Yoo), his estranged daughter and other passengers become trapped on a speeding train during a zombie outbreak in South Korea.\n', 'traintobusan.mp4', 'July 1,2016'),
(5, 'Cinderella.jpg', 'Cinderella', '2015', '2h 9min', 'After her father unexpectedly dies, young Ella (Lily James) finds herself at the mercy of her cruel stepmother (Cate Blanchett) and stepsisters, who reduce her to scullery maid. Despite her circumstances, she refuses to despair.', 'cinderella.mp4', 'March 13, 2015'),
(6, 'lettersfromiwojima.jpg', 'Letters From Iwo Jima', '2006', '2h 19m', 'Long-buried missives from the island reveal the stories of the Japanese troops who fought and died there during World War II. Among them are Saigo (Kazunari Ninomiya), a baker; Baron Nishi (Tsuyoshi Ihara), an Olympic champion; and Shimizu (Ryô Kase), an idealistic soldier.', 'lettersfromiwojima.mp4', 'February 22, 2007'),
(7, 'theraid.jpg', 'The Raid', '2011', '1h 48m', 'A rookie member of an elite team of commandos, Rama (Iko Uwais) is instructed to hang back while his comrades-in-arms go ahead with their mission to take down a brutal crime lord called Tama (Ray Sahetapy). ', 'theraid.mp4', 'March 23, 2012'),
(8, 'cloverfieldparadox.jpg', 'The Cloverfield Paradox', '2018', '1h 56m', 'A crew aboard a space station finds itself alone after a scientific experiment causes the Earth to disappear. When a space shuttle appears, the space station\'s crew must determine if it is carrying friends or foes.', 'cloverfieldparadox.mp4', 'February 4, 2018'),
(9, 'goon.jpg', 'Goon 2', '2017', '1h 46m', 'A lockout has reunited old teammates and brought a crew of new players to the bench for the Halifax Highlanders. Sidelined after one too many hits and now married with a baby on the way, Doug "The Thug" Glatt hangs up his skates and settles into life as an insurance salesman.', 'goon.mp4', 'March 17, 2017'),
(10, 'spiritedaway.jpg', 'Spirited Away', '2001', '1h 32m', 'In this animated feature by noted Japanese director Hayao Miyazaki, 10-year-old Chihiro (Rumi Hiiragi) and her parents (Takashi Naitô, Yasuko Sawaguchi) stumble upon a seemingly abandoned amusement park. ', 'spiritedaway.mp4', 'July 20, 2001'),
(11, 'lawless.jpg', 'Lawless', '2012', '2h 12m', 'In 1931, the Bondurant brothers of Franklin County, Va., run a multipurpose backwoods establishment that hides their true business, bootlegging. Middle brother Forrest (Tom Hardy) is the brain of the operation; older Howard (Jason Clarke) is the brawn, and younger Jack (Shia LaBeouf), the lookout. Though the local police have taken bribes and left the brothers alone, a violent war erupts when a sadistic lawman (Guy Pearce) from Chicago arrives and tries to shut down the Bondurants operation.\n', 'lawless.mp4', 'August 29, 2012'),
(12, 'acrosstheuniverse.jpg', 'Across the Universe', '2007', '1h 57m', 'The songs of the Beatles provide the sonic framework for this musical tale of romance, war and peace. When young British worker Jude (Jim Sturgess) sets sail for the United States in search of his father, he ends up meeting carefree college student Max (Joe Anderson) and his lovely sister, Lucy (Evan Rachel Wood), along with a cast of eccentric characters. As Jude and Lucy fall for each other, their relationship is threatened by the social upheaval that accompanies the Vietnam War.\n', 'acrosstheuniverse.mp4', 'November 25, 2015'),
(13, 'zeitgeist.jpg', 'Zeitgeist', '2007', '2h 3m', 'A filmmaker looks at religion, the 9/11 terror attacks, and possible plans by international leaders to create a single world bank.\n', 'zeitgeist.mp4', 'June 1, 2007'),
(14, 'pulpfiction.jpg', 'Pulp Fiction', '1994', '2h 16m', 'Vincent Vega (John Travolta) and Jules Winnfield (Samuel L. Jackson) are hitmen with a penchant for philosophical discussions. In this ultra-hip, multi-strand crime movie, their storyline is interwoven with those of their boss, gangster Marsellus Wallace (Ving Rhames) ; his actress wife, Mia (Uma Thurman) ; struggling boxer Butch Coolidge (Bruce Willis) ; master fixer Winston Wolfe (Harvey Keitel) and a nervous pair of armed robbers, "Pumpkin" (Tim Roth) and "Honey Bunny" (Amanda Plummer).\n', 'pulpfiction.mp4', 'October 14, 1994'),
(15, 'anewhope.jpg', 'Star Wars: A New Hope', '1977', '1h 46m', 'The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 (Kenny Baker) and C-3PO (Anthony Daniels) to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and justice to the Galaxy.\n', 'anewhope.mp4', '1977'),
(16, 'domino.jpg', 'Domino', '2005', '1h 47m', 'In this film loosely based on a true story, Domino Harvey (Keira Knightley), a former model, is now a bounty hunter who has been arrested for robbing an armored car. During interrogation, she claims innocence and tells her story. Harvey became a pupil of Ed Moseby (Mickey Rourke), who ran a course for aspiring bounty hunters. Along with Choco (Edgar Ramirez), the three of them became a successful team. But, when a bail bondsman (Delroy Lindo) offered a job, they faced a complicated frame-up.\n', 'domino.mp4', 'October 15, 2014'),
(17, 'ateam.jpg', 'The A-Team', '2010', '2h 1m', 'A man who loves when a plan comes together, Hannibal Smith (Liam Neeson) leads a close-knit team of elite operatives. Framed for a terrible crime, Smith and his men go rogue, using their special talents to clear their names and find the perpetrator. Hot on their trail is Charissa Sosa (Jessica Biel), who was once involved with a member of Smith\'s team and has sworn to capture them, no matter what it takes.\n', 'ateam.mp4', 'August 1, 2014'),
(18, 'trainwreck.jpg', 'Trainwreck', '2015', '1h 30m', 'Ever since her father drilled into her head that monogamy isn\'t realistic, magazine writer Amy (Amy Schumer) has made promiscuity her credo. As much as she enjoys an uninhibited life free of commitment, Amy is really in a rut. While writing a profile about charming and successful sports doctor Aaron Conners (Bill Hader), she finds herself actually falling in love for the first time -- and what\'s more, Aaron seems to like her too. Amy starts to wonder if it\'s time to clean up her act.\n', 'trainwreck.mp4', 'July 17, 2015'),
(19, 'prometheus.jpg', 'Prometheus', '2012', '2h 31m', 'The discovery of a clue to mankind\'s origins on Earth leads a team of explorers to the darkest parts of the universe. Two brilliant young scientists lead the expedition. Shaw (Noomi Rapace) hopes that they will meet a race of benevolent, godlike beings who will in some way verify her religious beliefs, while Holloway (Logan Marshall-Green) is out to debunk any spiritual notions. However, neither the scientists nor their shipmates are prepared for the unimaginable terrors that await them.\n', 'prometheus.mp4', 'June 8, 2012'),
(20, 'thedarkknight.jpg', 'The Dark Knight', '2008', '2h 7m', 'With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.\n', 'thedarkknight.mp4', 'July 18, 2008'),
(21, 'amelie.jpg', 'Amelie', '2001', '2h 2m', '"Amélie" is a fanciful comedy about a young woman who discretely orchestrates the lives of the people around her, creating a world exclusively of her own making. Shot in over 80 Parisian locations, acclaimed director Jean-Pierre Jeunet ("Delicatessen"; "The City of Lost Children") invokes his incomparable visionary style to capture the exquisite charm and mystery of modern-day Paris through the eyes of a beautiful ingenue.\n', 'amelie.mp4', 'December 25, 2012'),
(22, 'grandbudapest.jpg', 'The Grand Budapest Hotel', '2014', '1h 44m', 'In the 1930s, the Grand Budapest Hotel is a popular European ski resort, presided over by concierge Gustave H. (Ralph Fiennes). Zero, a junior lobby boy, becomes Gustave\'s friend and protege. Gustave prides himself on providing first-class service to the hotel\'s guests, including satisfying the sexual needs of the many elderly women who stay there. When one of Gustave\'s lovers dies mysteriously, Gustave finds himself the recipient of a priceless painting and the chief suspect in her murder.\r\n', 'grandbudapest.mp4', 'March 14, 2014'),
(23, 'basterds.jpg', 'Inglorious Basterds', '2009', '2h 31m', 'It is the first year of Germany\'s occupation of France. Allied officer Lt. Aldo Raine (Brad Pitt) assembles a team of Jewish soldiers to commit violent acts of retribution against the Nazis, including the taking of their scalps. He and his men join forces with Bridget von Hammersmark, a German actress and undercover agent, to bring down the leaders of the Third Reich. Their fates converge with theater owner Shosanna Dreyfus, who seeks to avenge the Nazis\' execution of her family.\r\n', 'basterds.mp4', 'August 21, 2009'),
(24, 'shapeofwater.jpg', 'The Shape of Water', '2017', '2h 14m', 'Elisa is a mute, isolated woman who works as a cleaning lady in a hidden, high-security government laboratory in 1962 Baltimore. Her life changes forever when she discovers the lab\'s classified secret -- a mysterious, scaled creature from South America that lives in a water tank. As Elisa develops a unique bond with her new friend, she soon learns that its fate and very survival lies in the hands of a hostile government agent and a marine biologist.\r\n', 'shapeofwater.mp4', 'December 1, 2017'),
(25, 'fmj.jpg', 'Full Metal Jacket', '1987', '2h 14m', 'Stanley Kubrick\'s take on the Vietnam War follows smart-aleck Private Davis (Matthew Modine), quickly christened "Joker" by his foul-mouthed drill sergeant (R. Lee Ermey), and pudgy Private Lawrence (Vincent D\'Onofrio), nicknamed "Gomer Pyle," as they endure the rigors of basic training. Though Pyle takes a frightening detour, Joker graduates to the Marine Corps and is sent to Vietnam as a journalist, covering -- and eventually participating in -- the bloody Battle of Hué.\r\n', 'fmj.mp4', '1987');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@admin.com', '2018-03-19 18:28:41', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
