-- Mệnh đề SELECT
SELECT
    CURRENT_DATE AS "today",
    PI() AS PI,
    1 + 2 AS sum,
    "MySQL" AS "language";

-- Mệnh đề FROM
-- VD: Lấy ra tất cả phòng ban
SELECT department_id, department_name
FROM department;
-- VD: Lấy ra tất cả đề thi
SELECT *
FROM exam;
-- VD: Lấy ra duration (không trùng nhau) trong đề thi
SELECT DISTINCT duration
FROM exam;

-- Mệnh đề WHERE
-- Toán tử so sánh: >, >=, <, <=, =, != (<>)
-- VD: Lấy ra phòng ban có id > 5
SELECT *
FROM department
WHERE department_id > 5;
-- Toán tử quan hệ: AND, OR
-- VD: Lấy ra phòng ban có id > 5 và id < 8
SELECT *
FROM department
WHERE department_id > 5 AND department_id < 8;
-- Toán tử BETWEEN ... AND ...
-- VD: Lấy ra phòng ban có 6 <= id <= 7
SELECT *
FROM department
WHERE department_id BETWEEN 6 AND 7;
-- Toán tử IN / NOT IN
-- VD: Lấy ra phòng ban có id là số chẵn
SELECT *
FROM department
WHERE department_id IN (2, 4, 6, 8);
-- Toán tử LIKE / NOT LIKE
-- _: Đại diện cho 1 kí tự bất kì
-- %: Đại diện cho 0 hoặc nhiều kí tự bất kì
-- VD: Lấy ra phòng ban chứa kí tự "n"
SELECT *
FROM department
WHERE department_name LIKE "%n%";
-- Toán tử IS NULL / IS NOT NULL
-- VD:
SELECT *
FROM department
WHERE department_name IS NOT NULL;

-- Mệnh đề ORDER BY
-- Tăng dần: ASC (Mặc định)
-- Giảm dần: DESC
-- VD: Lấy ra đề thi tăng dần theo created_date
SELECT *
FROM exam
ORDER BY created_date ASC;
-- VD: Lấy ra đề thi duration tăng dần, created_date giảm dần
SELECT *
FROM exam
ORDER BY duration ASC, created_date DESC;

-- Mệnh đề LIMIT
-- VD: Lấy ra phòng ban có id lớn nhất
SELECT *
FROM department
ORDER BY department_id DESC
LIMIT 1;
