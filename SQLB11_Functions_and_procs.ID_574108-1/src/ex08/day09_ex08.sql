CREATE OR REPLACE FUNCTION fnc_fibonacci (pstop integer DEFAULT 10)
RETURNS TABLE (fibonacci_number integer) AS $$
DECLARE
a integer := 0;
b integer := 1;
temp integer;

BEGIN
IF a < pstop THEN
fibonacci_number := a;
RETURN NEXT;
END IF;

IF b < pstop THEN
fibonacci_number := b;
RETURN NEXT;
END IF;

WHILE a + b <pstop LOOP
temp := a +b;
fibonacci_number := temp;
RETURN NEXT;
a := b;
b := temp;
END LOOP;

RETURN;
END;
$$ LANGUAGE plpgsql;

/* select * from fnc_fibonacci(20);

select * from fnc_fibonacci(); */