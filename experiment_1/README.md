# Experiment 1

## Aim
To design and implement a Library Management System database using appropriate tables, primary keys, foreign keys, and constraints, and to perform DML operations along with DCL commands such as role creation, privilege granting, and revoking to ensure database security.

## Objectives
To gain practical experience in implementing Data Definition Language (DDL), Data Manipulation Language (DML), and Data Control Language (DCL) operations in a real database environment. This will also include implementing role-based privileges to secure data.

---

## Practical/Experiment Steps
* Schema Architecture: Designed the fundamental structure by creating books and library_visitors tables. Robust data integrity was enforced using constraints such as NOT NULL, UNIQUE, and CHECK (notably restricting visitor registration to ages 18 and above).
* Relational Mapping: Established the book_issue table to serve as a transactional link, utilizing Foreign Keys to connect book records with visitor data.
* Data Seeding: Populated the database with a foundational dataset to validate the schema design and relationship logic.
* Operational Validation: Conducted stress tests on the data by performing updates and deletions to observe how the system handles referential integrity and constraints.
* Access Control Management: Implemented a security layer by creating a specific Librarian role. Access levels were meticulously defined and managed using GRANT and REVOKE commands.

---

## Procedure
1. Authenticated into the database server and established a stable connection.
2. Initialized a dedicated database environment for the Library Management System.
3. Executed CREATE TABLE scripts in a hierarchical order, ensuring parent tables were established before dependent transaction tables.
4. Used INSERT statements to populate the system with diverse sample records for books and visitors.
5. Ran complex SELECT queries to verify cross-table consistency and ensure data was stored accurately.
6. Applied UPDATE and DELETE operations to confirm that the database maintains its rules (constraints) during data changes.
7. Defined the Librarian role and assigned granular permissions for specific database operations.
8. Validated the security model by attempting restricted actions before and after revoking permissions.
9. Compiled the final SQL scripts and captured visual evidence (screenshots) of the successful command executions.

---

## I/O Analysis

### 1. Table Creation: BOOKS


<img width="468" height="170" alt="Screenshot 2026-01-26 134737" src="https://github.com/user-attachments/assets/b95f7006-1ffa-4fb0-86f8-cb6f144ec5d1" />




### 2. Insert and Select: BOOKS




<img width="689" height="98" alt="Screenshot 2026-01-26 134851" src="https://github.com/user-attachments/assets/0e2c2f50-e0a2-441a-b1d3-c9c47e3b9197" />




### 3. Table Creation: LIBRARY_VISITORS


**Output:**
<img width="1094" height="605" alt="image" src="https://github.com/user-attachments/assets/fb188f23-9e77-4bc6-94fb-a50b80beb059" />




### 4. Table Creation: BOOK_ISSUE


**Output:**
<img width="1074" height="585" alt="Screenshot 2026-01-26 134946" src="https://github.com/user-attachments/assets/b849acfd-9544-4c98-8563-96ff26148dfb" />






### 5. Creating Roles


**Output:**
<img width="987" height="457" alt="Screenshot 2026-01-26 135623" src="https://github.com/user-attachments/assets/90899268-bbf7-45fd-a52a-4d4bb7d42be1" />

<img width="1079" height="640" alt="Screenshot 2026-01-26 135638" src="https://github.com/user-attachments/assets/e134ac6e-bc32-4512-abb7-2f51d7345418" />






---

## Learning Outcomes
* Gained hands-on experience to work with PostgreSQL and pgAdmin
* Writing queries to create and delete tables
* Learnt to alter tables, view tables, create roles, granting and revoking access to the roles
* Primary and foreign keys implementations and roles
