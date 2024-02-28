SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'suraj thombare', 'surajthombare1110@gmail.com', 'suraj', 'suraj1110', '2024-01-20 06:03:56');


CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Dr. A.B. Nimbalkar', '2024-01-25 07:23:03', '2024-02-04 06:34:19'),
(2, 'Dr. Ms. Manisha Bharambe', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(3, 'Dr. Mrs. Harsha Patil', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(4, 'Ms. Smita Ghorpade', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),
(5, 'Ms. Kirti More', '2024-01-25 07:23:03', '2024-02-04 06:34:26'),

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'OPERATING SYSTEMS-II', 5, 2, '9789354512537', 229.00, '7bba0e967513e6f21f31c316a528a7f7.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:02'),
(2, 'OBJECT ORIENTED PROGRAMMING USING JAVA-II', 9, 2, '9789354512612', 323.00, '15ff34476a0bb85cdb7cb1d4705d152e.jpg', 0, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(3, 'WEB TECHNOLOGIES-II', 9, 1, '9789354513251', 229.00, '3537b87f0261788c6a1602582b5537af.jpg', 1, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(4, 'SOFTWARE TESTING TOOLS', 5, 4, '9789354513015', 110.00, 'd97b3a1009244eefeb3dd11d6975c744.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(5, 'COMPILER CONSTRUCTION', 5, 2, '9789354513091', 255.00, '8a9213a59cfc30d3bda9182f1c931dfc.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),
(6, 'DATA ANALYTICS', 5, 2, '9789354513176', 195.00, '777a2952c75839c633de8d8e5451ba99.jpg', NULL, '2024-01-30 07:23:03', '2024-02-04 06:34:11'),

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Technology', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(2, 'Science', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(3, 'Management', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(4, 'General', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51'),
(5, 'Programming', 1, '2024-01-31 07:23:03', '2024-02-04 06:33:51');

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID011', '2024-02-01 05:45:57', NULL, NULL, NULL),
(8, 1, 'SID002', '2024-02-01 05:45:57', '2024-02-04 06:33:08', 1, 0),
(9, 10, 'SID009', '2024-02-01 05:45:57', '2024-02-04 06:33:08', 1, 0),
(10, 11, 'SID009', '2024-02-01 05:45:57', '2024-02-04 06:33:08', 1, 0),
(11, 1, 'SID012', '2024-02-01 05:45:57', NULL, NULL, NULL),
(12, 10, 'SID012', '2024-02-01 05:45:57', '2024-02-04 06:33:08', 1, 5);

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'suraj', 'suraj@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-31 07:23:03', '2024-02-04 06:32:36'),
(2, 'SID002', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 1, '2024-01-31 07:23:03', '2024-02-04 06:32:42'),
(3, 'SID003', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-31 07:23:03', '2024-02-04 06:32:42'),
(4, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-31 07:23:03', '2024-02-04 06:32:42'),
(5, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-01-31 07:23:03', '2024-02-04 06:32:42'),

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;
