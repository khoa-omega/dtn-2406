-- Hiển thị danh sách database
SHOW DATABASES;

-- Xóa database nếu tồn tại
DROP DATABASE IF EXISTS lesson_01;

-- Tạo database
CREATE DATABASE lesson_01;

-- Kiểu dữ liệu
-- Số nguyên:
-- TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
-- Số thực:
-- FLOAT, DOUBLE
-- Logic:
-- BOOLEAN (TRUE hoặc FALSE)
-- Chuỗi ký tự (String):
-- CHAR, VARCHAR
-- Thời gian:
-- DATE (yyyy-MM-dd)
-- TIME (hh:mm:ss)
-- DATETIME (yyyy-MM-dd hh:mm:ss)
-- Enum: Tập hợp hữu hạn các giá trị
-- ENUM("MALE", "FEMALE", "UNKNOWN")

-- Chọn database
USE lesson_01;

-- Hiển thị danh sách table
SHOW TABLES;

-- Xóa table nếu tồn tại
DROP TABLE IF EXISTS customer;

-- Tạo table
CREATE TABLE customer (
    id INT UNSIGNED,
    name VARCHAR(50),
    birthdate DATE,
    active BOOLEAN
);

-- Mô tả table
DESCRIBE customer;

-- DDL table
SHOW CREATE TABLE customer;

-- Thêm dữ liệu vào table
INSERT INTO customer (id, name, birthdate, active)
VALUES (1, "Long", "2003-06-20", TRUE),
       (2, "Linh", "2008-12-04", FALSE);

-- Xem dữ liệu trong table
TABLE customer;

-- Ràng buộc dữ liệu (Constraints)
-- NULL / NOT NULL
CREATE TABLE student (
    name VARCHAR(50) NOT NULL
);

-- UNIQUE KEY: Duy nhất
CREATE TABLE account (
    email VARCHAR(50) UNIQUE
);

-- PRIMARY KEY: Khóa chính
-- Yêu cầu: UNIQUE + NOT NULL
-- 1. Một bảng có tối đa một khóa chính
-- 2. Một khóa chính có thể gồm nhiều cột
-- AUTO_INCREMENT: Tự động tăng
-- VD: Khóa chính 1 cột
CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT
);
-- VD: Khóa chính 2 cột
CREATE TABLE group_user (
    user_id INT NOT NULL,
    group_id INT NOT NULL,
    joined_date DATE,
    PRIMARY KEY (user_id, group_id)
);

-- DEFAULT: Mặc định
CREATE TABLE department (
    name VARCHAR(50) DEFAULT "Phòng chờ",
    created_date DATE DEFAULT (CURRENT_DATE)
);

-- CHECK: Kiểm tra giá trị
CREATE TABLE user (
    age INT CHECK (age >= 18)
);

-- FOREIGN KEY: Khóa ngoại
-- Sự kiện: UPDATE, DELETE
-- Hành động: RESTRICT, SET DEFAULT, SET NULL, CASCADE
CREATE TABLE department (
    id INT,
    name VARCHAR(50)
);
CREATE TABLE account (
    id INT,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES department (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
