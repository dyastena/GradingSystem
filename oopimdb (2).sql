-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 02:26 AM
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
(1, '23-00211', '12342', 1),
(2, '23-35123', '12342', 1),
(3, '23-41212', '12342', 1),
(4, '23-00211', '12345', 2),
(5, '23-35123', '12345', 2),
(6, '23-41212', '12345', 2);

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
  `MAttendance` decimal(5,2) DEFAULT NULL,
  `MQuiz` decimal(5,2) DEFAULT NULL,
  `MExercises` decimal(5,2) DEFAULT NULL,
  `MExam` decimal(5,2) DEFAULT NULL,
  `MCStudy` decimal(5,2) DEFAULT NULL,
  `MRecitation` decimal(5,2) DEFAULT NULL,
  `MidtermGrade` decimal(5,2) NOT NULL,
  `FAttendance` decimal(5,2) DEFAULT NULL,
  `FQuiz` decimal(5,2) DEFAULT NULL,
  `FExercises` decimal(5,2) DEFAULT NULL,
  `FExam` decimal(5,2) DEFAULT NULL,
  `FProject` decimal(5,2) DEFAULT NULL,
  `FinalGrade` decimal(5,2) NOT NULL,
  `SemestralGrade` decimal(5,2) DEFAULT NULL,
  `GradeEquivalent` varchar(5) DEFAULT NULL,
  `Remarks` varchar(50) DEFAULT NULL,
  `AcademicYearID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GradeID`, `StudentID`, `CourseID`, `MAttendance`, `MQuiz`, `MExercises`, `MExam`, `MCStudy`, `MRecitation`, `MidtermGrade`, `FAttendance`, `FQuiz`, `FExercises`, `FExam`, `FProject`, `FinalGrade`, `SemestralGrade`, `GradeEquivalent`, `Remarks`, `AcademicYearID`) VALUES
(1, '23-00211', 1, 98.99, 98.99, 98.99, 98.99, 98.99, 98.99, 98.99, 95.78, 95.78, 95.78, 95.78, 95.78, 95.78, 97.40, '1', 'Passed', 1),
(2, '23-00211', 2, 99.00, 99.00, 99.00, 99.00, 99.00, 99.00, 99.00, 98.00, 98.00, 98.00, 98.00, 98.00, 98.00, 98.50, '1', 'Passed', 2),
(3, '23-35123', 1, 99.00, 99.00, 99.00, 99.00, 99.00, 99.00, 99.00, 98.00, 98.00, 98.00, 98.00, 98.00, 98.00, 98.50, '1', 'Passed', 1),
(4, '23-35123', 2, 97.00, 97.00, 97.00, 97.00, 97.00, 97.00, 97.00, 97.00, 97.00, 97.00, 97.00, 97.00, 99.00, 98.00, '1', 'Passed', 2),
(5, '23-41212', 1, 95.00, 95.00, 95.00, 95.00, 95.00, 95.00, 95.00, 100.00, 100.00, 100.00, 100.00, 100.00, 100.00, 97.50, '1', 'Passed', 1),
(6, '23-41212', 2, 99.00, 99.00, 99.00, 99.00, 99.00, 99.00, 99.00, 98.00, 98.00, 98.00, 98.00, 98.00, 98.00, 98.50, '1', 'Passed', 2);

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
('23-00211', 'JUSTINE angelo', 'Baruelo', 'Faustino', 'BSIT', 3, 'D', 5),
('23-35123', 'Najil', 'Ong', 'Bumacod', 'BSIT', 1, 'B', 5),
('23-41212', 'dhone bert', 'tengteng', 'Napay', 'BSCS', 3, 'A', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `StudentID` varchar(20) DEFAULT NULL,
  `FacultyID` varchar(11) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `StudentID`, `FacultyID`, `Password`, `Role`, `Email`) VALUES
(1, NULL, '12342', '12342@cfPACALDO', 'Professor', NULL),
(2, NULL, '12345', '12345@medrLUMABAS', 'Professor', NULL),
(3, NULL, '13152', '13152@jtCRUZ', 'Professor', NULL),
(19, '23-00211', NULL, '23-00211@JAbFaustino', 'Student', NULL),
(20, '23-41212', NULL, '23-41212@DBtNapay', 'Student', NULL),
(21, '23-35123', NULL, '23-35123@NoBumacod', 'Student', NULL);

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
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `FacultyID` (`FacultyID`);

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
  MODIFY `AssignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `GradeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `assignments_ibfk_4` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignments_ibfk_5` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignments_ibfk_6` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `faculty_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`AcademicYearID`) REFERENCES `academicyears` (`AcademicYearID`),
  ADD CONSTRAINT `grades_ibfk_4` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grades_ibfk_5` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grades_ibfk_6` FOREIGN KEY (`AcademicYearID`) REFERENCES `academicyears` (`AcademicYearID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
