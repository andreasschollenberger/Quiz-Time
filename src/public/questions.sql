-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 30, 2024 at 09:24 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `topic` enum('cinema','tech','tierwelt','animals','ch-norris','tiere','geography','astronomy','history','werkzeuge') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_1` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_4` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_5` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `topic`, `question_text`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `answer_5`, `correct`) VALUES
(1, 'tech', 'What is the primary purpose of Docker?', 'Containerization', 'Virtualization', 'Hardware optimization', 'Isolation of software environments', NULL, '1'),
(2, 'tech', 'What is the role of a load balancer in a web server infrastructure?', 'Distribute incoming network traffic', 'Enhance server security', 'Minimize server resources', NULL, NULL, '1'),
(3, 'tech', 'What is the purpose of version control systems?', 'Code collaboration', 'Bug tracking', 'Backup and recovery', 'Code history tracking', NULL, '1,3,4'),
(4, 'tech', 'What is the difference between HTTP and HTTPS?', 'Data encryption', 'Protocol for secure communication', 'Connection speed optimization', 'File transfer protocol', 'S for speed', '1,2'),
(5, 'tech', 'What is the significance of the 404 HTTP status code?', 'Successful request', 'Unauthorized access', 'Page not found', 'Server error', NULL, '3'),
(6, 'tech', 'What is the primary function of a firewall in network security?', 'Virus detection', 'Traffic monitoring', 'Unauthorized access prevention', 'Data encryption', 'Fire safety measures', '3'),
(7, 'tech', 'What is the purpose of an API (Application Programming Interface)?', 'User interface design', 'Data communication between software components', 'File storage', 'Hardware optimization', NULL, '2'),
(8, 'tech', 'What is the role of an ORM (Object-Relational Mapping) in software development?', 'Database optimization', 'Code deployment', 'Facilitate communication between frontend and backend', 'Mapping objects to database tables', NULL, '4'),
(9, 'tech', 'What does the acronym CDN stand for in the context of web development?', 'Content Distribution Network', 'Central Database Network', 'Code Development Namespace', 'Cryptographic Data Network', NULL, '1'),
(10, 'tech', 'What is the primary purpose of a cache in computing?', 'Temporary data storage', 'User authentication', 'Code compilation', 'Network packet filtering', NULL, '1'),
(11, 'tech', 'What is the concept of \"scalability\" in the context of software architecture?', 'Ability to handle increased workload', 'User interface responsiveness', 'Code readability', 'Data encryption strength', NULL, '1'),
(12, 'tech', 'What is the significance of the 502 HTTP status code?', 'Server not found', 'Bad gateway', 'Unauthorized access', 'Request timeout', NULL, '2'),
(13, 'tech', 'What is the main purpose of a Content Delivery Network (CDN) in web development?', 'Load balancing', 'Caching', 'Distributed server locations', NULL, NULL, '1,2,3'),
(14, 'tech', 'In the context of programming languages, what does \"static typing\" refer to?', 'Variables can change types at runtime', 'Variables must be declared with a specific type', 'Variables are not required', NULL, NULL, '2'),
(15, 'tech', 'What is the role of a reverse proxy in a web server setup?', 'Hide server details from clients', 'Load balancing', 'Data encryption', 'Request forwarding to backend servers', NULL, '1,4'),
(16, 'tech', 'What does the acronym SQL stand for?', 'Structured Query Language', 'Server Query Logic', 'Simple Question Language', NULL, NULL, '1'),
(17, 'tech', 'What is the purpose of Continuous Integration (CI) in software development?', 'Automated testing', 'Automated deployment', 'Code integration', 'Code analysis', NULL, '1,3,4'),
(18, 'tech', 'What is the primary role of a router in a computer network?', 'Connect different networks', 'Provide internet access', 'Protect against malware', 'Manage computer resources', NULL, '1'),
(19, 'tech', 'What is the purpose of a NoSQL database?', 'Structured data storage', 'Highly normalized data', 'Scalability and flexibility for unstructured data', NULL, NULL, '3'),
(20, 'tech', 'What is the difference between Git and SVN (Subversion)?', 'Centralized version control', 'Distributed version control', 'Branching and merging capabilities', 'Sequential commit numbering', NULL, '2,3'),
(21, 'tech', 'What is the role of a package manager in software development?', 'Manage software dependencies', 'Design user interfaces', 'Monitor server performance', 'Handle network security', NULL, '1'),
(22, 'tech', 'What does the term \"Microservices\" refer to in software architecture?', 'Large monolithic applications', 'Small independent modular services', 'Database management systems', 'Server virtualization techniques', NULL, '2'),
(23, 'tech', 'In the context of cybersecurity, what is the purpose of a honeypot?', 'Detect and attract attackers', 'Encrypt network traffic', 'Prevent phishing attacks', 'Analyze code vulnerabilities', NULL, '1'),
(24, 'tech', 'What is the role of a CDN in optimizing website performance?', 'Minimize latency for global users', 'Optimize server-side code', 'Enhance database security', 'Automate testing processes', NULL, '1'),
(25, 'tech', 'What is the purpose of a JWT (JSON Web Token) in authentication?', 'Store user credentials', 'Generate secure access tokens', 'Encrypt communication between client and server', 'Manage database connections', NULL, '2'),
(26, 'tech', 'What is the concept of \"Dependency Injection\" in software development?', 'Managing external libraries', 'Inversion of control', 'Data encryption', 'Memory allocation optimization', NULL, '2'),
(27, 'tech', 'What is the primary function of a CDN in the context of web security?', 'Firewall protection', 'DDoS mitigation', 'Encrypting sensitive data', 'User authentication', NULL, '2'),
(28, 'tech', 'What is the significance of the 503 HTTP status code?', 'Service unavailable', 'Unauthorized access', 'Page not found', 'Request timeout', NULL, '1'),
(29, 'tech', 'What is the purpose of the \"git clone\" command in Git?', 'Create a new branch', 'Commit changes to the repository', 'Copy a repository from a remote source', 'Delete a branch', NULL, '3'),
(30, 'tech', 'What is the primary advantage of using a CDN for serving static assets in web development?', 'Improved page load speed', 'Enhanced database performance', 'Reduced server security risks', 'Increased server-side processing', NULL, '1'),
(31, 'tierwelt', 'Welches Säugetier ist für seine fliegenden Fähigkeiten bekannt?', 'Giraffe', 'Fledermaus', 'Elefant', 'Koala', '', 'answer-2'),
(32, 'tierwelt', 'Welche Reptilienart ist dafür berühmt, ihre Beute durch Schlangenbewegungen zu fangen?', 'Schildkröte', 'Krokodil', 'Schlange', 'Eidechse', '', 'answer-3'),
(33, 'tierwelt', 'Welches Meerestier ist für seine Fähigkeit bekannt, Tinte als Verteidigungsmechanismus freizusetzen?', 'Delphin', 'Hai', 'Seestern', 'Oktopus', '', 'answer-4'),
(34, 'tierwelt', 'Welcher Vogel ist für sein imposantes Federkleid und seine Fähigkeit zum Fliegen in großen Höhen bekannt?', 'Pinguin', 'Papagei', 'Adler', 'Kolibri', '', 'answer-3'),
(35, 'tierwelt', 'Welche Art von Insekt ist für ihre sozialen Kolonien und Honigproduktion bekannt?', 'Ameise', 'Käfer', 'Schmetterling', 'Spinne', '', 'answer-1'),
(36, 'tierwelt', 'Welches Säugetier ist für seine Streifen und seine Fähigkeit zum Sprinten bekannt?', 'Bär', 'Zebra', 'Löwe', 'Elefant', '', 'answer-2'),
(37, 'tierwelt', 'Welche amphibische Kreatur verbringt einen Teil ihres Lebens im Wasser und einen Teil an Land?', 'Salamander', 'Krokodil', 'Schildkröte', 'Seepferdchen', '', 'answer-1'),
(38, 'tierwelt', 'Welches Raubtier ist für seine charakteristische Mähne bekannt?', 'Tiger', 'Leopard', 'Gepard', 'Löwe', '', 'answer-4'),
(39, 'tierwelt', 'Welches Meereslebewesen ist für seine leuchtenden Eigenschaften bekannt?', 'Walhai', 'Glühwürmchenfisch', 'Qualle', 'Seepferdchen', '', 'answer-2'),
(40, 'tierwelt', 'Welches Nagetier ist für seine Baufähigkeiten und Holzverarbeitung bekannt?', 'Hamster', 'Maus', 'Biber', 'Eichhörnchen', '', 'answer-3'),
(41, 'tierwelt', 'Welches Tier ist für seine Fähigkeit zur Echolokation bekannt, um Beute zu orten?', 'Fledermaus', 'Eule', 'Delfin', 'Faultier', '', 'answer-1'),
(42, 'tierwelt', 'Welches Tier ist für seine Wanderungen über weite Strecken bekannt, insbesondere in der Serengeti?', 'Elefant', 'Nashorn', 'Antilope', 'Gnu', '', 'answer-4'),
(43, 'tierwelt', 'Welches Tier ist für seine Fähigkeit zum Farbwechsel bekannt und lebt in verschiedenen Meereshabitaten?', 'Chamäleon', 'Tintenfisch', 'Leguan', 'Gecko', '', 'answer-1'),
(44, 'tierwelt', 'Welche Art von Affe ist dafür bekannt, lange Arme und einen langen Schwanz zu haben?', 'Gorilla', 'Orang-Utan', 'Kapuzineraffe', 'Lemur', '', 'answer-2'),
(45, 'tierwelt', 'Welches Meeressäugetier ist dafür bekannt, in Gruppen, auch als \"Pods\", zu leben?', 'Delfin', 'Wal', 'Seelöwe', 'Robbe', '', 'answer-1'),
(46, 'ch-norris', 'How many push-ups can Chuck Norris do?', '100', 'Chuck Norris doesn\'t do push-ups, he pushes the world down', 'None, the Earth pushes down for him', '500', 'Chuck Norris once did a push-up and caused an earthquake', '2,3,5'),
(47, 'ch-norris', 'What does Chuck Norris eat for breakfast?', 'Chuck Norris doesn\'t eat breakfast, breakfast eats what Chuck Norris eats', 'Pancakes', 'Cereal', 'Nails Chuck Norris eats nails for breakfast... without any milk.', 'Eggs, bacon and a side of justice', '1,4,5'),
(48, 'ch-norris', 'How does Chuck Norris celebrate his birthday?', 'Chuck Norris doesn\'t celebrate birthdays, birthdays celebrate Chuck Norris', 'With a cake', 'With a party', 'With friends', 'With a quiet dinner...', '1'),
(49, 'ch-norris', 'What happens when Chuck Norris enters a room?', 'Chuck Norris doesn\'t enter a room, the room makes way for Chuck Norris', 'People greet him', 'The room brightens up', 'Time stops', 'Chairs become uncomfortable, because they know Chuck Norris can break them with a glare', '1,3'),
(50, 'ch-norris', 'Why did Chuck Norris become an actor?', 'Chuck Norris didn\'t become an actor, acting became Chuck Norris', 'To showcase his talents', 'To entertain audiences', 'To challenge himself', 'Because Chuck Norris can do anything', '1'),
(51, 'ch-norris', 'How does Chuck Norris cut his hair?', 'Chuck Norris\'s hair doesn\'t need cutting, it\'s naturally perfect', 'With scissors', 'With a chainsaw', 'He doesn\'t need to, his hair stays perfect', 'Chuck Norris\'s hair cuts itself out of fear.', '5'),
(52, 'ch-norris', 'What does Chuck Norris do in his free time?', 'Chuck Norris doesn\'t have free time, time has Chuck Norris', 'Read books', 'Practice martial arts', 'Relax', 'Chuck Norris doesn\'t have free time, he has victory time.', '1,5'),
(53, 'ch-norris', 'What is Chuck Norris\'s favorite color?', 'Chuck Norris\'s favorite color is Chuck Norris', 'Red', 'Black', 'Chuck Norris\'s favorite color is all colors', 'Chuck Norris\'s favorite color is the color of fear.', '1,5'),
(54, 'ch-norris', 'How does Chuck Norris win arguments?', 'Chuck Norris doesn\'t argue, he just wins', 'With logic', 'With persuasion', 'By being right', 'Chuck Norris didn\'t win arguments, arguments became Chuck Norris.', '1,5'),
(55, 'ch-norris', 'What is Chuck Norris\'s favorite hobby?', 'Chuck Norris doesn\'t have hobbies, hobbies have Chuck Norris', 'Painting', 'Fishing', 'Roundhouse kicking', 'Chuck Norris\'s favorite hobby is being Chuck Norris.', '1,5'),
(56, 'ch-norris', 'How does Chuck Norris drink his coffee?', 'Chuck Norris doesn\'t need coffee, coffee needs Chuck Norris', 'With cream and sugar', 'With a straw', 'Chuck Norris doesn\'t drink coffee, he drinks victory', 'Chuck Norris drinks coffee by staring at the cup until it surrenders its caffeine.', '1,4,5'),
(57, 'ch-norris', 'What does Chuck Norris do before going to bed?', 'wash his theeth', 'Read a book', 'Meditate', 'Chuck Norris doesn\'t sleep, he waits', 'Chuck Norris doesn\'t need to prepare for bed, bed prepares for Chuck Norris.', '4,5'),
(58, 'ch-norris', 'How does Chuck Norris handle stress?', 'Deep breathing', 'Chuck Norris uses stress as a training tool', 'Yoga', 'Chuck Norris doesn\'t get stressed', 'Chuck Norris handles stress by roundhouse kicking it into oblivion.', '2,5'),
(59, 'ch-norris', 'What does Chuck Norris do when he\'s sick?', 'Chuck Norris\'s immune system fights illness', 'Take medicine', 'Power through it', 'Chuck Norris doesn\'t get sick', 'Chuck Norris sickens the sickness.', '5'),
(60, 'ch-norris', 'What does Chuck Norris say to fear?', 'Chuck Norris doesn\'t say anything to fear, fear says sorry to Chuck Norris', 'I\'m scared', 'I\'ll face you', 'Fear who?', 'Chuck Norris whispers, Fear is just a four-letter word', '1,5'),
(61, 'history', 'In welchem Jahr wurde die Berliner Mauer errichtet?', '1961', '1953', '1989', '', '', '1'),
(62, 'history', 'Wer war der erste Präsident der Vereinigten Staaten?', 'John Adams', 'Thomas Jefferson', 'George Washington', '', '', '3'),
(63, 'history', 'Welches Jahr markiert das Ende des Zweiten Weltkriegs?', '1945', '1939', '1955', '', '', '1'),
(64, 'history', 'Was war die Magna Carta?', 'Ein Friedensvertrag', 'Eine Verfassung', 'Ein Abkommen zwischen König John und den Baronen', '', '', '3'),
(65, 'history', 'Wer war die Herrscherin des antiken Ägyptens und die letzte Pharaonin?', 'Cleopatra', 'Nefertiti', 'Hatschepsut', '', '', '1'),
(66, 'history', 'In welchem Jahr wurde die Unabhängigkeit der Vereinigten Staaten erklärt?', '1776', '1789', '1799', '', '', '1'),
(67, 'history', 'Was war die industrielle Revolution?', 'Ein politischer Umsturz', 'Eine soziale Bewegung', 'Ein wirtschaftlicher und technologischer Wandel', '', '', '3'),
(68, 'history', 'Wer war der Architekt des Eiffelturms in Paris?', 'Gustave Eiffel', 'Antoni Gaudí', 'Le Corbusier', '', '', '1'),
(69, 'history', 'Was war die Renaissance?', 'Ein Zeitalter der Aufklärung', 'Eine kulturelle Wiedergeburt', 'Eine politische Revolution', '', '', '2'),
(70, 'history', 'Welches Ereignis führte zur Teilung Deutschlands nach dem Zweiten Weltkrieg?', 'Die Berliner Mauer', 'Die Gründung der NATO', 'Der Marshall-Plan', '', '', '1'),
(71, 'history', 'Wer war der Hauptanführer der amerikanischen Bürgerrechtsbewegung?', 'Malcolm X', 'Rosa Parks', 'Martin Luther King Jr.', '', '', '3'),
(72, 'history', 'In welchem Jahr endete der Kalte Krieg?', '1989', '1991', '1975', '', '', '2'),
(73, 'history', 'Welche antike Stadt wurde durch einen Vulkanausbruch im Jahr 79 n.Chr. zerstört?', 'Athen', 'Rom', 'Pompeji', '', '', '3'),
(74, 'history', 'Wer war der erste Mensch, der die Spitze des Mount Everest erreichte?', 'Tenzing Norgay', 'Edmund Hillary', 'Reinhold Messner', '', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
