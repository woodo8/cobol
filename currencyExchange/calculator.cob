IDENTIFICATION DIVISION.
PROGRAM-ID. Calculator.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Num1 PIC 9(5).
01 Num2 PIC 9(5).
01 Result PIC 9(6).
01 Operator PIC X.

PROCEDURE DIVISION.
    DISPLAY "Enter first number: ".
    ACCEPT Num1.
    DISPLAY "Enter second number: ".
    ACCEPT Num2.
    DISPLAY "Enter operator (+, -, *, /): ".
    ACCEPT Operator.

    STRING Num1 DELIMITED BY SIZE INTO Num1.
    STRING Num2 DELIMITED BY SIZE INTO Num2.

    IF Operator = "+" THEN
        ADD Num1 TO Num2 GIVING Result
    ELSE IF Operator = "-" THEN
        SUBTRACT Num2 FROM Num1 GIVING Result
    ELSE IF Operator = "*" THEN
        MULTIPLY Num1 BY Num2 GIVING Result
    ELSE IF Operator = "/" THEN
        DIVIDE Num1 BY Num2 GIVING Result
    ELSE
        DISPLAY "Invalid operator"
    END-IF.

    DISPLAY "Result: " Result.

STOP RUN.