CREATE TABLE departments(
   dept_no VARCHAR PRIMARY KEY,
   dept_name VARCHAR
);

CREATE TABLE dept_emp(
    emp_no VARCHAR NOT NULL,
    dept_no VARCHAR NOT NULL,
    from_date VARCHAR(10),
    to_date VARCHAR(10),
   CONSTRAINT PK_dept_emp PRIMARY KEY(emp_no, dept_no),
   FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
   FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
);

CREATE TABLE dept_manager(
   dept_no VARCHAR NOT NULL,
   emp_no VARCHAR NOT NULL,
   from_date VARCHAR(10),
   to_date VARCHAR(10),
   CONSTRAINT PK_dept_manager PRIMARY KEY(dept_no, emp_no),
   FOREIGN KEY(dept_no) REFERENCES department(dept_no),
   FOREIGN KEY(emp_no) REFERENCES dept_emp(dept_no)
);

CREATE TABLE employees(
   emp_no VARCHAR PRIMARY KEY,
   birth_date VARCHAR,
   first_name VARCHAR,
   last_name VARCHAR,
   gender VARCHAR(1),
   hire_date VARCHAR(10)
);

CREATE TABLE salaries(
   emp_no VARCHAR PRIMARY KEY,
   salary VARCHAR,
   from_date VARCHAR(10),
   to_date VARCHAR(10),
   FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
   emp_no VARCHAR PRIMARY KEY,
   title VARCHAR,
   from_date VARCHAR(10),
   to_date VARCHAR(10)
);