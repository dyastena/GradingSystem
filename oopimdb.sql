-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 12:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oopimdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicyears`
--

CREATE TABLE `academicyears` (
  `AcademicYearID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academicyears`
--

INSERT INTO `academicyears` (`AcademicYearID`, `Year`, `Semester`) VALUES
(1, '2023-2024', '1'),
(2, '2023-2024', '2'),
(3, '2024-2025', '1'),
(4, '2024-2025', '2'),
(5, '2025-2026', '1'),
(6, '2025-2026', '2'),
(7, '2026-2027', '1'),
(8, '2026-2027', '2');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `AssignmentID` int(11) NOT NULL,
  `StudentID` varchar(20) DEFAULT NULL,
  `FacultyID` varchar(20) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`AssignmentID`, `StudentID`, `FacultyID`, `CourseID`) VALUES
(1, '23-00429', '12342', 1),
(2, '23-00421', '13152', 22),
(3, '23-00211', '12345', 18);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(11) NOT NULL,
  `CourseCode` varchar(50) NOT NULL,
  `CourseTitle` varchar(255) NOT NULL,
  `CurriculumYear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseCode`, `CourseTitle`, `CurriculumYear`) VALUES
(1, 'COMP101', 'Introduction to Computing', '1'),
(2, 'COMP102', 'Fundamentals of Programming', '1'),
(3, 'GE003', 'The Contemporary World with Peace Education', '1'),
(4, 'GE004', 'Mathematics in the Modern World', '1'),
(5, 'GE006', 'Art Appreciation', '1'),
(6, 'NSTP101-C', 'National Service Training0 Program (Civic Welfare Training Service)', '1'),
(7, 'PE101', 'Physical Activities Toward Health and Fitness 1 (Pathfit 1)', '1'),
(8, 'Comp 103', 'Intermediate Programming (JAVA)', '1'),
(9, 'GE001', 'Understanding the Self', '1'),
(10, 'GE005', 'Purposive Communication', '1'),
(11, 'GE007', 'Science, Technology and Society', '1'),
(12, 'GEE001', 'GE Elective 1: Environmental Science', '1'),
(13, 'IT101', 'Discrete Mathematics', '1'),
(14, 'NSTP102-C', 'National Service Training0 Program (Civic Welfare Training Service)', '1'),
(15, 'PE102', 'Physical Activities Toward Health and Fitness 2 (PATHfit 2)', '1'),
(16, 'COMP104', 'Data Structures and Algorithm', '2'),
(17, 'COMP105', 'Information Management', '2'),
(18, 'GE008', 'Ethics', '2'),
(19, 'GEE002', 'GE Elective 2: Living in the IT Era', '2'),
(20, 'IT102', 'Quantitative Methods', '2'),
(21, 'IT201', 'IT Elective: Platform Technologies', '2'),
(22, 'IT202', 'IT Elective: Object-Oriented Programming (VB.net)', '2'),
(23, 'PE103', 'Physical Activities Toward Health and Fitness 3 (PATHfit 3)', '2');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'College of Nursing'),
(2, 'College of Engineering'),
(3, 'College of Education'),
(4, 'College of Computer Studies'),
(5, 'College of Arts and Science'),
(6, 'College of Business and Accountancy'),
(7, 'College of Hospitality Management');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` varchar(20) NOT NULL,
  `prof_FName` varchar(50) NOT NULL,
  `prof_MName` varchar(50) NOT NULL,
  `prof_LName` varchar(50) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `prof_FName`, `prof_MName`, `prof_LName`, `DepartmentID`, `Email`) VALUES
('12342', 'Chrisha Mae', 'Flores', 'Pacaldo', 5, NULL),
('12345', 'Mary Edriane', 'Del Rosario', 'Lumabas', 4, NULL),
('13152', 'Jonas', 'Thomas', 'Cruz', 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeID` int(11) NOT NULL,
  `StudentID` varchar(20) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `MidtermGrade` decimal(5,2) NOT NULL,
  `FinalGrade` decimal(5,2) NOT NULL,
  `SemestralGrade` decimal(5,2) DEFAULT NULL,
  `GradeEquivalent` varchar(5) DEFAULT NULL,
  `Remarks` varchar(50) DEFAULT NULL,
  `AcademicYearID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GradeID`, `StudentID`, `CourseID`, `MidtermGrade`, `FinalGrade`, `SemestralGrade`, `GradeEquivalent`, `Remarks`, `AcademicYearID`) VALUES
(1, '23-00429', 1, 98.99, 95.78, 97.40, '1', 'Passed', 1),
(2, '23-00421', 22, 95.00, 93.00, 94.00, '1.5', 'Passed', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` varchar(20) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `Course` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `FName`, `MName`, `LName`, `Course`, `Year`, `Section`, `DepartmentID`) VALUES
('12-21312', 'afndas', 'oisiavo', 'eo', 'BSIT', 1, 'B', 2),
('21-00011', 'lolo', 'loli', 'lilot', 'BSIT', 3, 'C', 5),
('23-00211', 'Justein', 'zcv', 'Faustino', 'BSIT', 3, 'C', 4),
('23-00421', 'AJ', 'Mmniverse', 'Junio', 'BSCS', 3, 'B', 6),
('23-00425', 'AJ', 'Junio', 'Junio', 'BSCS', 3, 'B', 3),
('23-00429', 'Najil', 'Mmniverse', 'Bumacod', 'BSCS', 3, 'B', 6),
('23-00554', 'Dhone Bert', 'Napay', 'okay', 'BSIT', 2, 'B', 4),
('23-04210', 'Jan Alain', 'Goling', 'Cainglet', 'BSCS', 1, 'B', 4),
('23-04211', 'Jan Alain', 'Goling', 'Cainglet', 'BSCS', 1, 'B', 4),
('23-23134', 'Justein', 'zcv', 'Faustino', 'BSIT', 3, 'C', 4),
('23-41231', 'Dhone Bert', 'Napay', 'Tinapay', 'BSCS', 2, 'C', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `StudentID` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `StudentID`, `Password`, `Role`, `Email`) VALUES
(1, '23-00211', '23-00211@JzFaustino', 'student', NULL),
(2, '23-00250', '23-00250@DBaNapay', 'Student', NULL),
(3, '23-00251', '23-00251@FBaNapay', 'Student', NULL),
(4, '23-00512', '', 'Student', NULL),
(5, '23-00261', '23-00261@FQaNapay', 'Student', NULL),
(6, '23-00554', '23-00554@DBnokay', 'Student', NULL),
(7, '23-04210', '23-04210@JAgCainglet', 'Student', NULL),
(8, '23-04211', '23-04211@JAgCainglet', 'Student', NULL),
(9, '23-00421', '23-00421@NoBumacod', 'Student', NULL),
(10, '23-23134', '23-23134@JzFaustino', 'Student', NULL),
(11, '12-21312', '12-21312@Aoeo', 'Student', NULL),
(12, '23-00429', '23-00429@NmBumacod', 'Student', NULL),
(13, '23-41231', '23-41231@DBnTinapay', 'Student', NULL),
(14, '23-00425', '23-00425@AjJunio', 'Student', NULL),
(15, '21-00011', '21-00011@Lllilot', 'Student', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicyears`
--
ALTER TABLE `academicyears`
  ADD PRIMARY KEY (`AcademicYearID`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`AssignmentID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `FacultyID` (`FacultyID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD UNIQUE KEY `CourseCode` (`CourseCode`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `AcademicYearID` (`AcademicYearID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicyears`
--
ALTER TABLE `academicyears`
  MODIFY `AcademicYearID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `AssignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GradeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`AcademicYearID`) REFERENCES `academicyears` (`AcademicYearID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
