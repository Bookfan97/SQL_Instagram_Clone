DELIMITER $$

CREATE TRIGGER must_be_Adult
    BEFORE INSERT ON users FOR EACH ROW
    BEGIN
        IF NEW.age <18
        THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Too young to sign up';
        END IF;
    END;
$$

DELIMITER;