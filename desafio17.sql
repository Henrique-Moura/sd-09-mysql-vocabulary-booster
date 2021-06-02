USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_actual_date
	BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN 
	SET NEW.OrderDate = NOW();
END $$
DELIMITER ;    

-- SELECT * FROM w3schools.orders;