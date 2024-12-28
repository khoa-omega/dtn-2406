-- SUBQUERY: Truy vấn con
-- VD: Lấy ra department của account có id = 2
SELECT department_name
FROM department
WHERE department_id =
    (SELECT department_id
    FROM account
    WHERE account_id = 2);

-- Toán tử: IN, ANY, ALL, EXISTS
-- VD: Lấy ra department của account có id > 2
SELECT department_name
FROM department
WHERE department_id = ANY
    (SELECT department_id
    FROM account
    WHERE account_id > 2);












