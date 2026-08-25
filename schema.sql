 CREATE DATABASE IF NOT EXISTS library;
 USE library;
 
 CREATE TABLE Students(
 Student_id INT PRIMARY KEY,
 Name VARCHAR(100),
 Age  INT,
 Department VARCHAR(50),
 Email_id VARCHAR(100),
 Phone_number VARCHAR(13)
 );
 CREATE TABLE Authors(
 Author_id INT PRIMARY KEY,
 Name VARCHAR(50),
 Country VARCHAR(50)
 );
 
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    Genre VARCHAR(50),
    PublishedYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(Author_id)
);
CREATE TABLE BorrowRecords (
    RecordID INT PRIMARY KEY,
    StudentID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Students(Student_id),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
 
 
 