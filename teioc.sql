-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 04 mai 2024 à 23:05
-- Version du serveur : 10.5.23-MariaDB-0+deb11u1
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `teioc`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `label`, `status`, `sortOrder`, `question_id`) VALUES
(1, 'Maximizing employee benefits', 1, 1, 1),
(2, 'Maximizing shareholder wealth', 1, 2, 1),
(3, 'Minimizing operational costs', 1, 3, 1),
(4, 'Income Statement', 1, 1, 2),
(5, 'Balance Sheet', 1, 2, 2),
(6, 'Cash Flow Statement', 1, 3, 2),
(7, 'The speed at which a company can pay off its debts', 1, 1, 3),
(8, 'The use of borrowed funds to increase the return on investment', 1, 2, 3),
(9, 'The proportion of equity to assets held by a company', 1, 3, 3),
(10, 'Frequent rebranding to stay current', 1, 1, 4),
(11, 'Consistent messaging and visual identity across all digital platforms', 1, 2, 4),
(12, 'Focusing solely on paid advertising', 1, 3, 4),
(13, 'Social Engagement Optimization – essential for increasing social media interactions', 1, 1, 5),
(14, 'Sales Efficiency Operations – crucial for improving online sales conversion rates', 1, 2, 5),
(15, 'Search Engine Optimization – important for improving a website\'s visibility on search engines', 1, 3, 5),
(16, 'Primarily to provide entertainment to the audience', 1, 1, 6),
(17, 'To disseminate promotional coupons and deals only', 1, 2, 6),
(18, 'To engage and educate the audience, thereby building brand trust and authority', 1, 3, 6),
(19, 'It\'s a form of digital art created using computers.', 1, 1, 7),
(20, 'It\'s an art form that involves the creation of an immersive physical environment.', 1, 2, 7),
(21, 'It refers to exclusive art installations in corporate settings.', 1, 3, 7),
(22, 'The latest trends in popular culture.', 1, 1, 8),
(23, 'Assets inherited from past generations, maintained in the present, and bestowed to future generations.', 1, 2, 8),
(24, 'Financial inheritances and estates passed down in families.', 1, 3, 8),
(25, 'By limiting the mediums artists can use.', 1, 1, 9),
(26, 'By providing new mediums and methods for artistic expression.', 1, 2, 9),
(27, 'By making art less accessible to the general public.', 1, 3, 9),
(28, 'Hello', 1, 1, 10),
(29, 'Bonjour', 1, 2, 10),
(30, 'Hola', 1, 3, 10),
(31, 'Red', 1, 1, 11),
(32, 'Green', 1, 2, 11),
(33, 'Blue', 1, 3, 11),
(34, '3', 1, 1, 12),
(35, '5', 1, 2, 12),
(36, '4', 1, 3, 12);

-- --------------------------------------------------------

--
-- Structure de la table `intern`
--

CREATE TABLE `intern` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `contactDetails` varchar(255) DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lastConnection` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `intern`
--

INSERT INTO `intern` (`id`, `email`, `password`, `name`, `company`, `contactDetails`, `creationDate`, `status`, `lastConnection`) VALUES
(3, 'intern3@example.com', '$2y$10$N4EDGNah0.V.bkkQYr1JseV.78pUk51Thw58FAS7VydBulUkdkslC', 'Intern Three', 'Company C', '1122334455', '2023-12-22', 1, '2023-12-22'),
(4, 'intern4@example.com', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Intern Four', 'Company D', '5566778899', '2023-12-22', 1, '2023-12-22'),
(5, 'intern5@example.com', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Intern Five', 'Company E', '1230984567', '2023-12-22', 1, '2023-12-22'),
(11, 'adam.baker@example.com', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Adam Baker', 'TechWave Inc', '1112223333', '2023-01-10', 1, '2023-12-22'),
(12, 'bethany.cole@example.com', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Bethany Cole', 'EcoSolutions Inc', '2223334444', '2023-02-15', 1, '2023-12-21'),
(13, 'charlie.dunn@example.net', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Charlie Dunn', 'NextGen Robotics', '3334445555', '2023-03-20', 1, '2023-12-20'),
(14, 'david.evans@example.org', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'David Evans', 'SolarTech Energy', '4445556666', '2023-04-25', 1, '2023-12-19'),
(15, 'emily.ford@example.co.uk', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Emily Ford', 'Creative Media Ltd', '5556667777', '2023-05-30', 1, '2023-12-18'),
(16, 'frank.green@example.io', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Frank Green', 'BioHealth Corp', '6667778888', '2023-06-05', 1, '2023-12-17'),
(17, 'grace.harris@example.co', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Grace Harris', 'Planet Green Solutions', '7778889999', '2023-07-10', 1, '2023-12-16'),
(18, 'hannah.jackson@innovate.example', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Hannah Jackson', 'Tech Pioneers', '8889990000', '2023-08-15', 1, '2023-12-15'),
(19, 'harry.kim@ecotech.example', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Harry Kim', 'Dynamic Design Studio', '9990001111', '2023-09-20', 1, '2023-12-14'),
(20, 'heather.lee@creative.example', '$2a$10$BKmg/0a5QlHRLnuuoqfijO8gCeNDq0NvVBngvtzOzuFW/uUdOPD7u', 'Heather Lee', 'Future Finance Group', '0001112222', '2023-10-25', 1, '2023-12-13'),
(22, 'abdelkefi.d@gmail.com', '$2a$10$dHc56xzgAET.6RMQCtp8qu/dUa0CawWcxBvxJPEWA3KwAG50WcVXu', 'Dora ABDELKEFI', 'UTC', '0123456789', '2023-12-22', 1, '2023-12-22'),
(23, 'testing@example.com', '$2a$10$6cv/FCDRx.u2dPmIHlQGYeFsPFpteDaQv.ajyufpnmfNa73/Tyc/O', 'Testing Testing', 'Testing', '0123456789', '2024-01-04', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `pathway`
--

CREATE TABLE `pathway` (
  `intern_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `duration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pathway`
--

INSERT INTO `pathway` (`intern_id`, `survey_id`, `score`, `duration`) VALUES
(3, 1, 3, '01:00:00'),
(3, 2, 3, '02:00:00'),
(3, 9, 3, '03:00:00'),
(5, 1, 2, '00:15:00'),
(5, 9, 0, '00:01:00'),
(22, 26, 2, '00:00:31');

-- --------------------------------------------------------

--
-- Structure de la table `pathway_answer`
--

CREATE TABLE `pathway_answer` (
  `intern_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pathway_answer`
--

INSERT INTO `pathway_answer` (`intern_id`, `survey_id`, `answer_id`) VALUES
(3, 1, 2),
(3, 1, 5),
(3, 1, 8),
(3, 2, 11),
(3, 2, 14),
(3, 2, 17),
(3, 9, 20),
(3, 9, 23),
(3, 9, 26),
(5, 1, 2),
(5, 1, 5),
(5, 1, 9),
(5, 9, 21),
(5, 9, 24),
(5, 9, 27),
(22, 26, 28),
(22, 26, 31),
(22, 26, 36);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `correctAnswer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `label`, `status`, `sortOrder`, `survey_id`, `correctAnswer_id`) VALUES
(1, 'What is the primary goal of corporate financial management?', 1, 1, 1, 2),
(2, 'Which financial statement provides a snapshot of a company\'s financial position at a specific point in time?', 1, 2, 1, 5),
(3, 'What does the term \'leverage\' refer to in corporate finance?', 1, 3, 1, 8),
(4, 'Which of the following is a key component of a successful online branding strategy?', 1, 4, 2, 11),
(5, 'In digital marketing, what does SEO stand for and why is it important?', 1, 5, 2, 14),
(6, 'What role does content marketing play in online brand promotion?', 1, 6, 2, 17),
(7, 'In contemporary art, what is the significance of \'installation art\'?', 1, 7, 9, 20),
(8, 'What defines \'cultural heritage\'?', 1, 8, 9, 23),
(9, 'How has technology influenced contemporary art?', 1, 9, 9, 26),
(10, 'How do we say hello in English?', 1, 1, 26, 28),
(11, 'What color is the sky on a clear day?', 1, 2, 26, 33),
(12, 'What is 2 + 2?', 1, 3, 26, 36);

-- --------------------------------------------------------

--
-- Structure de la table `survey`
--

CREATE TABLE `survey` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `survey`
--

INSERT INTO `survey` (`id`, `status`, `sortOrder`, `topic_id`, `name`) VALUES
(1, 1, 1, 1, 'Corporate Financial Management'),
(2, 1, 2, 2, 'Online Brand Promotion and Strategy Analysis'),
(3, 0, 3, 3, 'Visual Communication and Design Principles'),
(4, 0, 4, 4, 'Strategic Project Execution and Leadership'),
(5, 0, 5, 5, 'Holistic Lifestyle and Wellness Proficiency'),
(6, 0, 6, 6, 'Mechanical Engineering Technical Competence Examination'),
(7, 0, 7, 7, 'Renewable Energy Systems and Technology'),
(8, 0, 8, 8, 'Educational Methodologies'),
(9, 1, 9, 9, 'Contemporary Arts and Cultural Heritage'),
(10, 0, 10, 10, 'Sustainable Environmental Practices and Policy'),
(11, 0, 11, 11, 'Survey Series One'),
(12, 0, 12, 12, 'Survey Series Two'),
(13, 0, 13, 13, 'Survey Series Three'),
(14, 0, 14, 14, 'Survey Series Four'),
(15, 0, 15, 15, 'Survey Series Five'),
(16, 0, 16, 16, 'Survey Series Six'),
(17, 0, 17, 17, 'Survey Series Seven'),
(18, 0, 18, 18, 'Survey Series Eight'),
(19, 0, 19, 19, 'Survey Series Nine'),
(20, 0, 20, 20, 'Survey Series Ten'),
(21, 0, 21, 1, 'Advanced Investment Strategies'),
(22, 0, 22, 2, 'E-Commerce Growth Techniques'),
(23, 0, 23, 3, 'Innovative UI/UX Design Trends'),
(24, 0, 24, 4, 'Agile Methodology Essentials'),
(25, 0, 25, 5, 'Mindfulness and Stress Reduction Techniques'),
(26, 1, 21, 21, 'General Knowledge Quiz');

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `test`
--

INSERT INTO `test` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `topic`
--

INSERT INTO `topic` (`id`, `name`, `status`, `sortOrder`) VALUES
(1, 'Finance and Accounting', 1, 1),
(2, 'Digital Marketing', 1, 2),
(3, 'Graphic Design', 1, 3),
(4, 'Project Management', 1, 4),
(5, 'Health and Wellness', 1, 5),
(6, 'Mechanical Engineering', 1, 6),
(7, 'Renewable Energy', 1, 7),
(8, 'Education and Teaching', 1, 8),
(9, 'Art and Culture', 1, 9),
(10, 'Environmental Science', 1, 10),
(11, 'Topic One', 1, 11),
(12, 'Topic Two', 1, 12),
(13, 'Topic Three', 1, 13),
(14, 'Topic Four', 1, 14),
(15, 'Topic Five', 1, 15),
(16, 'Topic Six', 0, 16),
(17, 'Topic Seven', 0, 17),
(18, 'Topic Eight', 0, 18),
(19, 'Topic Nine', 0, 19),
(20, 'Topic Ten', 0, 20),
(21, 'Trivial Knowledge', 1, 21);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Index pour la table `intern`
--
ALTER TABLE `intern`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pathway`
--
ALTER TABLE `pathway`
  ADD PRIMARY KEY (`intern_id`,`survey_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Index pour la table `pathway_answer`
--
ALTER TABLE `pathway_answer`
  ADD PRIMARY KEY (`intern_id`,`survey_id`,`answer_id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `correctAnswer_id` (`correctAnswer_id`);

--
-- Index pour la table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Index pour la table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `intern`
--
ALTER TABLE `intern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Contraintes pour la table `pathway`
--
ALTER TABLE `pathway`
  ADD CONSTRAINT `pathway_ibfk_1` FOREIGN KEY (`intern_id`) REFERENCES `intern` (`id`),
  ADD CONSTRAINT `pathway_ibfk_2` FOREIGN KEY (`survey_id`) REFERENCES `survey` (`id`);

--
-- Contraintes pour la table `pathway_answer`
--
ALTER TABLE `pathway_answer`
  ADD CONSTRAINT `pathway_answer_ibfk_1` FOREIGN KEY (`intern_id`) REFERENCES `intern` (`id`),
  ADD CONSTRAINT `pathway_answer_ibfk_2` FOREIGN KEY (`survey_id`) REFERENCES `survey` (`id`),
  ADD CONSTRAINT `pathway_answer_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey` (`id`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`correctAnswer_id`) REFERENCES `answer` (`id`);

--
-- Contraintes pour la table `survey`
--
ALTER TABLE `survey`
  ADD CONSTRAINT `survey_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
