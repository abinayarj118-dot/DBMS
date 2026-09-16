CREATE DATABASE ONLINE_BOOK_STORE;

USE ONLINE_BOOK_STORE;

CREATE TABLE Category
(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE Book
(
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(100),
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT,
    Description VARCHAR(255),
    CategoryID INT,
    FOREIGN KEY (CategoryID)
    REFERENCES Category(CategoryID)
);

INSERT INTO Category VALUES
(1, 'FICTION'),
(2, 'NON-FICTION'),
(3, 'ACADEMIC'),
(4, 'BIOGRAPHY'),
(5, 'CHILDREN BOOKS'),
(6, 'COMPETITIVE EXAM BOOKS');

SELECT * FROM Category;

INSERT INTO Book VALUES
(101, 'THE ALCHEMIST', 'PAULO COELHO', 'HARPER COLLINS', 350, 50,
 'A motivational fiction novel', 1),

(102, 'PRIDE AND PREJUDICE', 'JANE AUSTEN', 'PENGUIN BOOKS', 300, 40,
 'A classic romantic novel', 1),

(103, 'THE GREAT GATSBY', 'F. SCOTT FITZGERALD', 'SCRIBNER', 280, 35,
 'A classic American novel', 1),

(104, 'WINGS OF FIRE', 'A. P. J. ABDUL KALAM', 'UNIVERSITIES PRESS', 400, 45,
 'Autobiography of Dr. APJ Abdul Kalam', 2),

(105, 'ATOMIC HABITS', 'JAMES CLEAR', 'AVALON', 550, 30,
 'A book about habit formation', 2),

(106, 'DATA STRUCTURES', 'SEYMOUR LIPSCHUTZ', 'MCGRAW HILL', 600, 25,
 'Study material for data structures', 3),

(107, 'DATABASE MANAGEMENT SYSTEM', 'RAGHU RAMAKRISHNAN', 'MCGRAW HILL', 750, 20,
 'Book covering database concepts', 3),

(108, 'OPERATING SYSTEM CONCEPTS', 'ABRAHAM SILBERSCHATZ', 'WILEY', 800, 30,
 'Book about operating systems', 3),

(109, 'STEVE JOBS', 'WALTER ISAACSON', 'SIMON AND SCHUSTER', 650, 25,
 'Biography of Steve Jobs', 4),

(110, 'LONG WALK TO FREEDOM', 'NELSON MANDELA', 'LITTLE BROWN', 500, 20,
 'Autobiography of Nelson Mandela', 4),

(111, 'THE VERY HUNGRY CATERPILLAR', 'ERIC CARLE', 'PENGUIN', 250, 40,
 'Popular childrens picture book', 5),

(112, 'CHARLIE AND THE CHOCOLATE FACTORY', 'ROALD DAHL', 'PUFFIN BOOKS', 300, 35,
 'A childrens fantasy novel', 5),

(113, 'QUANTITATIVE APTITUDE', 'R. S. AGGARWAL', 'S. CHAND', 500, 30,
 'Competitive examination preparation book', 6),

(114, 'GENERAL KNOWLEDGE', 'ARIHANT EXPERTS', 'ARIHANT PUBLICATIONS', 350, 40,
 'General knowledge preparation book', 6),

(115, 'REASONING', 'R. S. AGGARWAL', 'S. CHAND', 450, 25,
 'Reasoning practice book for competitive exams', 6);

SELECT * FROM Book;

UPDATE Book
SET Price = 450,
    Stock = 50
WHERE BookID = 101;

SELECT * FROM Book
WHERE BookID = 101;

DELETE FROM Book
WHERE BookID = 108;

DELETE FROM Book
WHERE CategoryID = 5;

SELECT * FROM Book
ORDER BY CategoryID;