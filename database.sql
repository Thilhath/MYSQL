CREATE DATABASE LibraryManagement;
USE LibraryManagement;

CREATE TABLE Book (
    isbn int PRIMARY KEY,
    Title varchar(255) NOT NULL,
    author_ID int FOREIGN KEY (author_nic) REFERENCES author(author_nic),
    release_date DATE NOT NULL,
    ShelfLocation varchar(255) NOT NULL,
    quantity int NOT NULL
);

CREATE TABLE author (
    author_ID int PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    second_name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    phone_no int NOT NULL
);

CREATE TABLE Borrowers (
    Borrowers_id int PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    second_name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    phone_no int NOT NULL
);

CREATE TABLE BookLoans (
    loans_id int PRIMARY KEY,
    isbn int FOREIGN KEY (isbn) REFERENCES Book(isbn),
    Borrowers_id FOREIGN KEY (Borrowers_nic) REFERENCES Borrowers(Borrowers_nic),
    Borrowed_date TIMESTAMP NOT NULL,
    due_date DATE NOT NULL,
    Return_date DATETIME NOT NULL,
);

CREATE TABLE Employee (
    employee_id int PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    second_name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    phone_no int NOT NULL,
    position varchar(255) NOT NULL,
    join_date DATE NOT NULL
);