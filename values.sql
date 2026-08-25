INSERT INTO Students(Student_id,Name,Age,Department,Email_id,Phone_number) VALUES
(1, 'Pranjal Singh', 21, 'ECE', 'pranjal.singh@iiitbh.ac.in', '9876543210'),
(2, 'Aryan Thakur', 22, 'CSE', 'aryan.thakur@iiitbh.ac.in', '9876543211'),
(3, 'Riya Sharma', 20, 'IT', 'riya.sharma@iiitbh.ac.in', '9876543212'),
(4, 'Aditya Verma', 23, 'ME', 'aditya.verma@iiitbh.ac.in', '9876543213'),
(5, 'Sneha Patel', 19, 'ECE', 'sneha.patel@iiitbh.ac.in', '9876543214'),
(6, 'Karan Yadav', 21, 'CSE', 'karan.yadav@iiitbh.ac.in', '9876543215'),
(7, 'Ananya Gupta', 22, 'EE', 'ananya.gupta@iiitbh.ac.in', '9876543216'),
(8, 'Rohit Kumar', 20, 'CE', 'rohit.kumar@iiitbh.ac.in', '9876543217'),
(9, 'Meera Joshi', 21, 'IT', 'meera.joshi@iiitbh.ac.in', '9876543218'),
(10, 'Vikram Chauhan', 23, 'ME', 'vikram.chauhan@iiitbh.ac.in', '9876543219');

INSERT INTO Authors (Author_id, Name, Country) VALUES
(1, 'J.K. Rowling', 'UK'),
(2, 'George Orwell', 'UK'),
(3, 'Chetan Bhagat', 'India'),
(4, 'Mark Twain', 'USA'),
(5, 'Jane Austen', 'UK'),
(6, 'Ruskin Bond', 'India'),
(7, 'Agatha Christie', 'UK'),
(8, 'R.K. Narayan', 'India'),
(9, 'Ernest Hemingway', 'USA'),
(10, 'Leo Tolstoy', 'Russia');

INSERT INTO Books (BookID, Title, AuthorID, Genre, PublishedYear) VALUES
(101, 'Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', 1997),
(102, '1984', 2, 'Dystopian', 1949),
(103, 'Five Point Someone', 3, 'Fiction', 2004),
(104, 'Adventures of Tom Sawyer', 4, 'Adventure', 1876),
(105, 'Pride and Prejudice', 5, 'Romance', 1813),
(106, 'The Room on the Roof', 6, 'Fiction', 1956),
(107, 'Murder on the Orient Express', 7, 'Mystery', 1934),
(108, 'Malgudi Days', 8, 'Short Stories', 1943),
(109, 'The Old Man and the Sea', 9, 'Fiction', 1952),
(110, 'War and Peace', 10, 'Historical', 1869);

INSERT INTO BorrowRecords (RecordID, StudentID, BookID, BorrowDate, ReturnDate, Status) VALUES
(1001, 1, 101, '2026-08-01', '2026-08-15', 'Returned'),
(1002, 2, 102, '2026-08-05', '2026-08-20', 'Borrowed'),
(1003, 3, 103, '2026-08-10', '2026-08-25', 'Returned'),
(1004, 4, 104, '2026-08-12', '2026-08-27', 'Borrowed'),
(1005, 5, 105, '2026-08-15', '2026-08-30', 'Overdue'),
(1006, 6, 106, '2026-08-18', '2026-09-02', 'Borrowed'),
(1007, 7, 107, '2026-08-20', '2026-09-05', 'Borrowed'),
(1008, 8, 108, '2026-08-22', '2026-09-07', 'Returned'),
(1009, 9, 109, '2026-08-25', '2026-09-10', 'Borrowed'),
(1010, 10, 110, '2026-08-26', '2026-09-11', 'Borrowed');

