-- SUBQUERY: Truy vấn con
-- VD: Lấy ra department của account có id = 2
SELECT department_name
FROM department
WHERE department_id =
    (SELECT department_id
    FROM account
    WHERE account_id = 2);

-- VD: Lấy ra câu hỏi có nhiều câu trả lời nhất
SELECT question.*
FROM question
LEFT JOIN answer USING (question_id)
GROUP BY question_id
HAVING COUNT(answer_id) =
    (SELECT MAX(answer_count)
    FROM
        (SELECT COUNT(answer_id) AS answer_count
        FROM question
        LEFT JOIN answer USING (question_id)
        GROUP BY question_id) AS t);

-- Toán tử: IN, ANY, ALL, EXISTS
-- VD: Lấy ra department của account có id > 2
SELECT department_name
FROM department
WHERE department_id = ANY
    (SELECT department_id
    FROM account
    WHERE account_id > 2);

-- VIEW: Bảng ảo
-- VD: Tạo view chứa tất cả phòng ban
DROP VIEW IF EXISTS view_01;

CREATE OR REPLACE VIEW view_01 AS
SELECT *
FROM department;

SELECT *
FROM view_01;

-- CTE: Bảng tạm
-- VD: Lấy ra câu hỏi có nhiều câu trả lời nhất
WITH c1 AS (
    SELECT question.*, COUNT(answer_id) AS answer_count
    FROM question
    LEFT JOIN answer USING (question_id)
    GROUP BY question_id
)
SELECT *
FROM c1
WHERE answer_count =
    (SELECT MAX(answer_count)
    FROM c1);

-- CTE RECURSIVE
-- VD: Thống kê mỗi tháng có bao nhiêu account
WITH RECURSIVE c1 (month) AS (
    SELECT 1
    UNION ALL
    SELECT month + 1 FROM c1 WHERE month < 12
), c2 AS (
    SELECT *, MONTH(created_date) AS month
    FROM account
)
SELECT month, COUNT(account_id)
FROM c1
LEFT JOIN c2 USING (month)
GROUP BY month;

-- Thời gian
SELECT
    CURRENT_DATE,
    YEAR(CURRENT_DATE),
    MONTH(CURRENT_DATE),
    DAY(CURRENT_DATE),
    CURRENT_DATE + INTERVAL 1 MONTH;










