-- LOCAL VARIABLE: Biến cục bộ
-- Phạm vi: Trong khối BEGIN ... END
DROP PROCEDURE IF EXISTS sp_01;
DELIMITER $$
CREATE PROCEDURE sp_01 ()
BEGIN
    DECLARE a INT DEFAULT 100;
    SELECT a;
END $$
DELIMITER ;

CALL sp_01();

-- SESSION VARIABLE: Biến session
-- Phạm vi: Trong phiên làm việc
SET @a = 100;

DROP PROCEDURE IF EXISTS sp_02;
DELIMITER $$
CREATE PROCEDURE sp_02 ()
BEGIN
    SELECT @a;
END $$
DELIMITER ;

CALL sp_02();

DROP PROCEDURE IF EXISTS sp_03;
DELIMITER $$
CREATE PROCEDURE sp_03 ()
BEGIN
    SELECT @a;
END $$
DELIMITER ;

CALL sp_03();

-- GLOBAL VARIABLE: Biến toàn cục
-- Phạm vi: Toàn bộ MySQL
SHOW VARIABLES;
SET GLOBAL connect_timeout = 3;

-- TRIGGER
-- Thời điểm: BEFORE, AFTER
-- Sự kiện: INSERT, UPDATE, DELETE
-- Tham chiếu: NEW, OLD
-- NEW: Bản ghi mới
-- OLD: Bản ghi cũ
-- VD:
DROP TRIGGER IF EXISTS trigger_01;
DELIMITER $$
CREATE TRIGGER trigger_01
BEFORE INSERT ON group_account
FOR EACH ROW
BEGIN
    IF NEW.joined_date > CURRENT_DATE THEN
        SIGNAL SQLSTATE "12345"
        SET MESSAGE_TEXT = "Thời gian tham gia không hợp lệ";
    END IF;
END $$
DELIMITER ;

INSERT INTO group_account   (group_id, account_id, joined_date )
VALUES                      (5       , 1         , "2030-03-05");

-- CASE WHEN
-- VD:
WITH RECURSIVE c1 (month) AS (
    SELECT 1
    UNION ALL
    SELECT month + 1 FROM c1 WHERE month < 12
)
SELECT month,
    CASE
        WHEN month = 2 THEN "28 hoặc 29 ngày"
        WHEN month IN (4, 6, 9, 11) THEN "30 ngày"
        ELSE "31 ngày"
    END AS count
FROM c1;









