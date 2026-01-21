AIM:
To design and implement a Library Management System database using appropriate tables, primary keys, foreign keys, and constraints, and to perform DML operations along with DCL commands such as role creation, privilege granting, and revoking to ensure database security.


Software Requirements
●	Database Management System:

○	PostgreSQL

●	Database Administration Tool:

○	pgAdmin

Objective :
To gain practical experience in implementing Data Definition Language (DDL), Data Manipulation Language (DML), and Data Control Language (DCL) operations in a real database environment. This will also include implementing role-based privileges to secure data.


Step-by-Step Procedure

(i) Start the system and log in to the computer.

(ii) Open the required database software
(e.g., Oracle SQL Developer / PostgreSQL / SQL*Plus).

(iii) Connect to the database using valid login credentials.

(iv) Create or select the required database/schema for performing the practical.

Table Creation and Constraints

(v) Create a table to store book details, ensuring that:

Each book has a unique ID.

Book name is unique and cannot be empty.

Author name is mandatory.

(vi) Add a column to the book table to store the number of available copies, ensuring the value is always greater than zero.

Data Insertion and Verification

(vii) Insert sample book records into the book table.

(viii) Display the book table to verify that the records are inserted correctly.

Visitor Table Creation

(ix) Create a table to store library visitor details, ensuring that:

Each visitor has a unique user ID.

User name and email are mandatory.

Email address is unique.

Age must be 17 years or above.

(x) Insert visitor details into the visitor table.

(xi) Display the visitor table to verify correct insertion of data.

Book Issue Table and Relationships

(xii) Create a table to store book issue details.

(xiii) Establish relationships between tables by linking:

Book ID with the book table.

User ID with the visitor table.

This ensures referential integrity using foreign keys.

(xiv) Add a column to store the issue date of the book.

Insert and Update Operations

(xv) Insert records into the book issue table.

(xvi) Update the issue date of a book for a specific issue record.

(xvii) Display the book issue table to verify the updated data.

Role and Privilege Management

(xviii) Create a role named Librarian to manage library operations.

(xix) Grant permissions such as select, insert, update, and delete on required tables to the librarian role.

(xx) Revoke specific privileges from the librarian role as required to restrict access.

Final Verification

(xxi) Check the currently logged-in user.

(xxii) Verify that all tables, relationships, and privileges are working correctly.

(xxiii) Save the work for future reference.

(xxiv) Take screenshots of table structures and outputs for practical record submission.



<img width="1068" height="748" alt="Screenshot 2026-01-21 220152" src="https://github.com/user-attachments/assets/89088700-fb7a-46bd-b530-3181cbdd96ac" />


Learning Outcomes:

Understood how to create database tables with primary key, unique, not null, and check constraints.

Learned to establish relationships between tables using foreign keys to maintain data integrity.

Gained basic knowledge of role creation and privilege management in a database system.
