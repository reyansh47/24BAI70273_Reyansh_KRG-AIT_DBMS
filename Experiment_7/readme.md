# Experiment 7

## Aim
To design and implement a materialised view and to compare and analyse execution time and performance differences between simple views, complex views, and materialised views, thereby understanding their impact on query optimisation and system performance.

---

## Objectives
* To create simple views, complex views, and materialised views, and to evaluate their performance by comparing query execution time for each, highlighting the advantages of materialised views in enterprise-level applications.

---

## Practical/Experiment Steps
* Relational Schema Construction: Developed the depts and emps tables, establishing a primary-foreign key relationship to simulate an enterprise organizational structure.
* Simple View Implementation: Created a standard virtual view (V_SIMPLE) to filter specific columns and rows from a single table based on salary thresholds.
* Complex Logic Aggregation: Designed a complex view (V_COMPLEX) that integrates multi-table joins and aggregate functions like SUM() and AVG() for departmental budgeting.
* Materialized Storage Configuration: Implemented a Materialized View (V_MATERIALIZED) to physically store precomputed query results, reducing the overhead of real-time calculations.
* Performance Benchmark Analysis: Utilized the EXPLAIN ANALYZE utility to measure and compare the execution costs and retrieval times across all three view types.
* Data Refresh Synchronisation: Executed the REFRESH MATERIALIZED VIEW command to ensure the stored data reflects the most recent updates from the underlying base tables.


---

## Procedure
1. Initialized the PostgreSQL environment via pgAdmin and established a connection to the local database server.
2. Executed the DDL scripts to create the depts and emps tables and populated them with representative organizational data.
3. Defined a Simple View to extract high-salary employee names and verified the output with a basic SELECT statement.
4. Constructed a Complex View using an INNER JOIN and GROUP BY clause to calculate total and average salaries by department.
5. Created a Materialized View using the same logic as the complex view to demonstrate how results are persisted in storage.
6. Simulated a data update scenario and practiced the REFRESH command to synchronize the materialized view with the base tables.
7. Conducted an execution time analysis by running EXPLAIN ANALYZE on each view to observe the differences in query planning and execution speed.
8. Evaluated the performance metrics, noting the shift from real-time computation in complex views to direct data retrieval in materialized views.
9. Saved the execution logs and performance reports to document the efficiency gains achieved through materialized caching.



---

## I/O Analysis

**1. Input:**
```sql
CREATE TABLE depts(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(20)
);

CREATE TABLE emps(
emp_id INT PRIMARY KEY,
name VARCHAR(20),
dept_id INT REFERENCES depts(dept_id),
salary NUMERIC
);
```

**Output:**

<img width="505" height="161" alt="1" src="https://github.com/user-attachments/assets/8ca142b9-6974-4b4b-b09a-04eecc65de68" />




**2. Input:**
```sql
INSERT INTO depts VALUES(1, 'IT'), (2, 'HR'), (3, 'SALES');
INSERT INTO emps VALUES(101, 'Mary', 1, 95000);
INSERT INTO emps VALUES(102, 'Amit', 1, 85000);
INSERT INTO emps VALUES(103, 'Sarah', 2, 70000);
INSERT INTO emps VALUES(104, 'John', 2, 65000);
INSERT INTO emps VALUES(105, 'Jack', 3, 55000);
INSERT INTO emps VALUES(106, 'Rohan', 1, 88000);
```

**Output:**

<img width="498" height="178" alt="2" src="https://github.com/user-attachments/assets/6433b9a7-2e58-4e05-ae18-99d802e0ca1c" />





**3. Input:**
```sql
CREATE VIEW V_SIMPLE AS
SELECT name, salary FROM emps WHERE salary>75000;

SELECT * FROM V_SIMPLE;
```

**Output:**

<img width="611" height="245" alt="3" src="https://github.com/user-attachments/assets/776d7a9b-3db1-4230-909b-7d29ccaf75df" />





**4. Input:**
```sql
CREATE VIEW V_COMPLEX AS
SELECT d.dept_name, SUM(e.salary) AS total_budget, AVG(e.salary) AS avg_sal
FROM emps e JOIN depts d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT * FROM V_COMPLEX;
```

**Output:**

<img width="645" height="241" alt="4" src="https://github.com/user-attachments/assets/dc8e6ee1-be5a-463f-93fb-e62517682fba" />





**5. Input:**
```sql
CREATE MATERIALIZED VIEW V_MATERIALIZED AS
SELECT d.dept_name, SUM(e.salary) AS total_budget, AVG(e.salary) AS avg_sal
FROM emps e JOIN depts d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT * FROM V_MATERIALIZED;
```

**Output:**

<img width="677" height="241" alt="5" src="https://github.com/user-attachments/assets/52db3e1b-1af1-45ec-a7ea-0da02b1ece34" />




**6. Input:**
```sql
REFRESH MATERIALIZED VIEW V_MATERIALIZED;
```

**Output:**

<img width="632" height="172" alt="6" src="https://github.com/user-attachments/assets/f7769c15-9426-4fce-992a-19e27c44908c" />




**7. Input:**
```sql
EXPLAIN ANALYZE SELECT * FROM V_SIMPLE;
```

**Output:**

<img width="808" height="322" alt="7" src="https://github.com/user-attachments/assets/79363162-62a9-4553-9d9e-4707faf7c1a8" />





**8. Input:**
```sql
EXPLAIN ANALYZE SELECT * FROM V_COMPLEX;
```

**Output:**


<img width="1076" height="648" alt="8" src="https://github.com/user-attachments/assets/0d497597-8d6d-4365-a941-18f8aae4b20e" />




**9. Input:**
```sql
EXPLAIN ANALYZE SELECT * FROM V_MATERIALIZED;
```

**Output:**

<img width="846" height="286" alt="9" src="https://github.com/user-attachments/assets/ed47cc56-0c9c-4d6a-8d7c-b6236b9fc9a8" />



---

## Learning Outcomes
* Gained proficiency in differentiating between virtual simple/complex views and physically stored materialized views.
* Gained the ability to use EXPLAIN ANALYZE to interpret query plans and identify performance bottlenecks.
* Learned the lifecycle of materialized views, including creation, storage benefits, and manual refresh mechanisms.
* Understanding how precomputing results in materialized views supports high-performance requirements for companies like SanDisk and PayPal.
