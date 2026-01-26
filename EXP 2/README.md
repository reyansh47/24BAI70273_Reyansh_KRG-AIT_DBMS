# README – SQL SELECT Queries Using Clauses (Experiment 2)

## 1. Aim of the Session
The aim of this experiment is to understand and implement **SQL SELECT queries** using clauses such as **WHERE, GROUP BY, HAVING, and ORDER BY** to retrieve and analyze data efficiently from relational database tables.

---

## 2. Objective of the Session
- To practice writing **SQL SELECT statements**
- To apply filtering conditions using the **WHERE** clause
- To sort query results using the **ORDER BY** clause
- To group records using the **GROUP BY** clause
- To filter grouped data using the **HAVING** clause
- To analyze data using **aggregate functions** such as COUNT(), SUM(), AVG(), MIN(), and MAX()

---

## 3. Practical / Experiment Steps
1. Create or use an existing `EMPLOYEE` table.
2. Select employees whose salary is greater than 20,000 using the WHERE clause.
3. Group employee records by department.
4. Calculate the average salary for each department.
5. Display only those departments where the average salary is greater than 30,000.
6. Arrange the final output in descending order of average salary.

---

## 4. Procedure of the Practical
1. The `EMPLOYEE` table is used to store employee details such as employee ID, name, department, salary, and joining date.
2. The WHERE clause is applied to filter employees with salary greater than 20,000.
3. The GROUP BY clause is used to group records department-wise.
4. Aggregate functions are applied to calculate average salary.
5. The HAVING clause is used to filter departments based on average salary.
6. The ORDER BY clause is applied to sort the result in descending order of average salary.

---

## 5. I/O Analysis (Input / Output Analysis)

### Input
- Employee details (Employee ID, Name, Department, Salary, Joining Date)
- SQL SELECT query using WHERE, GROUP BY, HAVING, and ORDER BY clauses

### Output
- Department-wise average salary
- Only departments with average salary greater than 30,000
- Output sorted in descending order of average salary
## Screenshots

<img width="375" height="194" alt="e2 4" src="https://github.com/user-attachments/assets/d80a7aa2-0daf-4692-91c8-9b99065b546f" />
<img width="393" height="160" alt="e2 5" src="https://github.com/user-attachments/assets/4518e194-ee9a-4816-a1d1-726d2d021c42" />
<img width="393" height="160" alt="e2 5 (1)" src="https://github.com/user-attachments/assets/8153ce04-c99f-465b-8869-e9d71213ee0d" />
<img width="367" height="109" alt="e2 6" src="https://github.com/user-attachments/assets/44851a02-3208-478a-b93e-feeb463167f0" />
<img width="285" height="91" alt="e2 1" src="https://github.com/user-attachments/assets/14138a16-cd82-4a2a-91ce-91c462d106ce" />
<img width="332" height="80" alt="e2 2" src="https://github.com/user-attachments/assets/b80eee9c-e136-4a6b-8f56-71bcc97f0ce6" />
<img width="344" height="152" alt="e2 3" src="https://github.com/user-attachments/assets/c54483a1-1c14-4071-9a7c-9ca6adb280d8" />




---

## 6. Learning Outcome
After completing this experiment, I was able to:
- Filter records using the **WHERE** clause
- Group records using **GROUP BY**
- Apply conditions on grouped data using **HAVING**
- Sort query results using **ORDER BY**
- Use aggregate functions for data analysis
