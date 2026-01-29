<h1 align="center">Experiment 3</h1>

<hr>

<h2>Aim</h2>
<p>
To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.
</p>

<hr>

<h2>Software Requirements</h2>
<ul>
<li><b>Database Management System:</b> PostgreSQL</li>
<li><b>Database Administration Tool:</b> pgAdmin</li>
</ul>

<hr>

<h2>Objectives</h2>
<ul>
<li>To create a simple PL/SQL program demonstrating Declaration Section and Execution Section.</li>
</ul>

<hr>

<h2>Problem Statement</h2>
<p>
Design and implement a simple PL/SQL program that demonstrates the basic structure of a PL/SQL block. The program should include a declaration section to define variables and an execution section to perform operations using those variables and display the results using appropriate output statements.
</p>

<h3>Declaration Section (DECLARE)</h3>
<p>Variables are declared and initialized:</p>
<ul>
<li>emp_id → Employee ID</li>
<li>emp_name → Employee Name</li>
<li>emp_salary → Employee Salary</li>
</ul>

<h3>Execution Section (BEGIN ... END)</h3>

<hr>

<h2>Practical/Experiment Steps</h2>
<ul>
<li>Block Structuring: Designed a foundational PL/SQL block consisting of a Declaration section for memory allocation and an Execution section for logic processing.</li>
<li>Variable Initialization: Defined and assigned static values to organizational variables, including Employee ID, Name, and Salary, to simulate a single-record data environment.</li>
<li>Computational Logic: Integrated an arithmetic operation within the block to calculate the House Rent Allowance (HRA) at 40% of the base salary.</li>
<li>Conditional Processing: Implemented a selection structure using an IF-ELSE statement to evaluate tax liability based on the defined salary threshold.</li>
<li>Output Orchestration: Utilized the DBMS_OUTPUT.PUT_LINE procedure to format and display the processed information in the console.</li>
</ul>

<hr>

<h2>Procedure</h2>
<ul>
<li>Established a connection to the database environment.</li>
<li>Initiated the DECLARE section to reserve memory for numerical and character data types.</li>
<li>Mapped real-world data to the defined variables, such as setting the Employee Name to ‘Reyansh’ and Salary to 49000.</li>
<li>Constructed the BEGIN block to initiate the procedural execution of the code.</li>
<li>Coded a series of output commands to display the primary employee details and the computed HRA value.</li>
<li>Applied a conditional logic check to compare the employee's salary against the 60,000 threshold.</li>
<li>Defined the alternative output paths to inform the user of their tax status based on the boolean result of the salary check.</li>
<li>Concluded the block with the END; keyword and executed the script to trigger the PL/SQL engine.</li>
<li>Verified the console output against the manual calculations to ensure the logic and variables were handled correctly.</li>
</ul>

<hr>

<h2>Input/Output Analysis</h2>

<pre><code>
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
</code></pre>

<hr>

<h2>Output</h2>
<p><img width="784" height="444" alt="image" src="https://github.com/user-attachments/assets/5090263d-7ea3-41df-8e71-0a82ec0b7187" /><br><img width="974" height="393" alt="image" src="https://github.com/user-attachments/assets/baa46619-b8f7-4c0c-8ca1-b4ffde5ca770" />

</p>

<hr>

<h2>Learning Outcomes</h2>
<ul>
<li>Gained knowledge of how a PL/SQL program is organised and executed step-by-step.</li>
<li>Learned to create and manage variables using suitable data types inside a block.</li>
<li>Used IF–ELSE conditions and calculations to control the flow of the program.</li>
<li>Displayed the output using built-in functions to show results to the user.</li>
</ul>
