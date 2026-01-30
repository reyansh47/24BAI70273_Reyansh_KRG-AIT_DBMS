
DECLARE
    EMP_ID      NUMBER := 101;
    EMP_NAME    VARCHAR2(20) := 'Reyansh';
    EMP_SALARY  NUMBER := 49000;
    HRA         NUMBER;

BEGIN
    -- Calculate HRA
    HRA := EMP_SALARY * 0.40;

    DBMS_OUTPUT.PUT_LINE('Employee ID    : ' || EMP_ID);
    DBMS_OUTPUT.PUT_LINE('Employee Name  : ' || EMP_NAME);
    DBMS_OUTPUT.PUT_LINE('Salary         : Rs. ' || EMP_SALARY);
    DBMS_OUTPUT.PUT_LINE('HRA (40%)      : Rs. ' || HRA);

    IF EMP_SALARY > 60000 THEN
        DBMS_OUTPUT.PUT_LINE('Tax Status     : Tax applicable');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Tax Status     : No tax applicable');
    END IF;
END;
