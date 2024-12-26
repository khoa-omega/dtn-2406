DROP DATABASE IF EXISTS lesson_04;
CREATE DATABASE lesson_04;
USE lesson_04;

DROP TABLE IF EXISTS boy;
CREATE TABLE boy (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS girl;
CREATE TABLE girl (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO boy (id, name   )
VALUES          (1 , "Khoa" ),
                (2 , "Duy"  ),
                (3 , "Hùng" ),
                (4 , "Cường"),
                (6 , "Linh" );

INSERT INTO girl (id, name      )
VALUES           (1 , "Thương"  ),
                 (2 , "Ngọc Anh"),
                 (5 , "Trang"   ),
                 (6 , "Linh"    );

-- Mệnh đề JOIN
-- INNER JOIN
-- VD: Lấy ra các cặp có id giống nhau
SELECT *
FROM boy
INNER JOIN girl ON boy.id = girl.id;
-- Từ khóa: USING
SELECT *
FROM boy
INNER JOIN girl USING (id);

-- LEFT / RIGHT JOIN
SELECT *
FROM boy
LEFT JOIN girl USING (id);

SELECT *
FROM girl
RIGHT JOIN boy USING (id);


