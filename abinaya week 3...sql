USE ONLINE_BOOK_STORE;

DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;


CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, 'BOOK HAVEN', '9876100001', 'bookhaven@gmail.com', 'Chennai'),
(202, 'READERS HUB', '9876100002', 'readershub@gmail.com', 'Madurai'),
(203, 'PAGE WORLD', '9876100003', 'pageworld@gmail.com', 'Coimbatore'),
(204, 'BOOK POINT', '9876100004', 'bookpoint@gmail.com', 'Salem'),
(205, 'READ MORE', '9876100005', 'readmore@gmail.com', 'Trichy'),
(206, 'BOOK MART', '9876100006', 'bookmart@gmail.com', 'Chennai'),
(207, 'PAGE TURNERS', '9876100007', 'pageturners@gmail.com', 'Madurai'),
(208, 'KNOWLEDGE BOOKS', '9876100008', 'knowledgebooks@gmail.com', 'Coimbatore'),
(209, 'BOOK HOUSE', '9876100009', 'bookhouse@gmail.com', 'Salem'),
(210, 'READERS CORNER', '9876100010', 'readerscorner@gmail.com', 'Trichy'),
(211, 'NEW BOOKS', '9876100011', 'newbooks@gmail.com', 'Chennai'),
(212, 'BOOK WORLD', '9876100012', 'bookworld@gmail.com', 'Madurai'),
(213, 'PAGE HOUSE', '9876100013', 'pagehouse@gmail.com', 'Coimbatore'),
(214, 'BOOK ZONE', '9876100014', 'bookzone@gmail.com', 'Salem'),
(215, 'SMART READERS', '9876100015', 'smartreaders@gmail.com', 'Trichy'),
(216, 'BOOK EXPRESS', '9876100016', 'bookexpress@gmail.com', 'Chennai'),
(217, 'READING HOUSE', '9876100017', 'readinghouse@gmail.com', 'Madurai'),
(218, 'BOOK WORLD', '9876100018', 'bookworld2@gmail.com', 'Coimbatore'),
(219, 'THE BOOK SHOP', '9876100019', 'thebookshop@gmail.com', 'Salem'),
(220, 'READING MART', '9876100020', 'readingmart@gmail.com', 'Trichy'),
(221, 'BOOK CORNER', '9876100021', 'bookcorner@gmail.com', 'Chennai'),
(222, 'READERS CHOICE', '9876100022', 'readerschoice@gmail.com', 'Madurai'),
(223, 'BOOK EXPRESS', '9876100023', 'bookexpress2@gmail.com', 'Coimbatore'),
(224, 'LITERATURE HOUSE', '9876100024', 'literaturehouse@gmail.com', 'Salem'),
(225, 'BOOK HUB', '9876100025', 'bookhub@gmail.com', 'Trichy'),
(226, 'READING CARE', '9876100026', 'readingcare@gmail.com', 'Chennai'),
(227, 'BOOK WORLD PLUS', '9876100027', 'bookworldplus@gmail.com', 'Madurai'),
(228, 'PAGE MART', '9876100028', 'pagemart@gmail.com', 'Coimbatore'),
(229, 'BOOK CHOICE', '9876100029', 'bookchoice@gmail.com', 'Salem'),
(230, 'PREMIUM BOOKS', '9876100030', 'premiumbooks@gmail.com', 'Trichy');

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    BookID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (BookID)
    REFERENCES Book(BookID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);


INSERT INTO Inventory VALUES
(301, 101, 201, 'AVAILABLE', 45),
(302, 102, 202, 'UNAVAILABLE', 0),
(303, 103, 203, 'AVAILABLE', 25),
(304, 104, 204, 'AVAILABLE', 20),
(305, 105, 205, 'AVAILABLE', 35),
(306, 106, 206, 'AVAILABLE', 25),
(307, 107, 207, 'UNAVAILABLE', 0),
(308, 109, 209, 'AVAILABLE', 35),
(309, 110, 210, 'AVAILABLE', 25),
(310, 113, 211, 'AVAILABLE', 35),
(311, 114, 212, 'AVAILABLE', 30),
(312, 115, 213, 'AVAILABLE', 25);


SELECT * FROM Inventory;


SELECT * FROM Seller;


SELECT * FROM Book;


UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 307;

SELECT * FROM Inventory
WHERE InventoryID = 307;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = 'UNAVAILABLE'
WHERE InventoryID = 311;

SELECT * FROM Inventory
WHERE InventoryID = 311;


UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = 'AVAILABLE'
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = '9876543210'
WHERE SellerID = 215;

SELECT * FROM Seller
WHERE SellerID = 215;


DELETE FROM Inventory
WHERE InventoryID = 312;

SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';


SELECT * FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT COUNT(*) AS Available_Count
FROM Inventory
WHERE AvailabilityStatus = 'AVAILABLE';


SELECT COUNT(*) AS Unavailable_Count
FROM Inventory
WHERE AvailabilityStatus = 'UNAVAILABLE';


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;


SELECT * FROM Seller;