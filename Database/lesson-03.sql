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

-- Các hàm tổng hợp (AGGREGATE FUNCTION)
-- COUNT, SUM, MIN, MAX, AVG
-- COUNT(*): Đếm số dòng
-- COUNT(duration): Đếm số dòng có duration khác NULL
-- COUNT(DISTINCT duration): Đếm số dòng có duration khác nhau
-- Chú ý: Áp dụng cho các giá trị khác NULL
-- VD: Lấy ra số lượng thời gian thi
SELECT 
    COUNT(*),
    COUNT(duration),
    COUNT(DISTINCT duration),
    COUNT(1),
    SUM(duration),
    MIN(duration),
    MAX(duration),
    AVG(duration)
FROM exam;

-- Mệnh đề GROUP BY
-- VD: Thống kê mỗi chức vụ có bao nhiêu nhân viên
SELECT position_id, COUNT(account_id) AS account_count
FROM account
GROUP BY position_id;

-- Mệnh đề HAVING
-- VD: Lấy ra chức vụ nhiều hơn 2 nhân viên
SELECT position_id, COUNT(account_id) AS account_count
FROM account
GROUP BY position_id
HAVING COUNT(account_id) > 2;

-- Cập nhật dữ liệu
-- VD: Đổi tên phòng ban số 1 thành "Phòng chờ"
UPDATE department
SET department_name = "Phòng chờ"
WHERE department_id = 1;

-- Xóa dữ liệu
-- VD: Xóa phòng ban số 1
DELETE FROM department
WHERE department_id = 1;
