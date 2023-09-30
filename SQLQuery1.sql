DECLARE @num INT = 3;
WHILE @num <= 1000000
BEGIN
    DECLARE @limit INT = SQRT(@num);
    DECLARE @divisor INT = 2;
    WHILE @divisor <= @limit
    BEGIN
        IF @num % @divisor = 0 BREAK;
        SET @divisor = @divisor + 1;
    END;

    IF @divisor > @limit PRINT @num;

    SET @num = @num + 1;
END;
