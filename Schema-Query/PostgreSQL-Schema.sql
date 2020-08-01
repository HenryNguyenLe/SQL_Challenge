-- Create tables and columns, with properties

-- dept_info has 2 columns :: dept_no & dept_name
CREATE TABLE dept_info (
    dept_no VARCHAR(100)   NOT NULL,
    dept_name VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_dept_info PRIMARY KEY (
        dept_no
     )
);



-- dept_emp :: has 4 columns :: emp_no, dept_no, start_date (from), end_date (to)
CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no VARCHAR(100)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (
        emp_no, dept_no
     )
);


-- dept_manager has 4 columns :: dept_no, emp_no, start_date (from), end_date (to)
CREATE TABLE dept_manager (
    dept_no VARCHAR(100)   NOT NULL,
	emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
        dept_no, emp_no
     )
);



-- employees has 6 columns :: emp_no, birth_date, fname (first), lname (last), gender, hire_date
CREATE TABLE employees (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    fname VARCHAR(100)   NOT NULL,
    lname VARCHAR(100)   NOT NULL,
    gender VARCHAR(100)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);



-- salaries has 4 columns emp_no, salaries, start_date (from), end_date (to)
CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salaries int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_no
     )
);



-- titles has 4 columns emp_no, titles, start_date (from), end_date (to)
CREATE TABLE titles (
    emp_no int   NOT NULL,
    titles VARCHAR(100)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);



-- establish the relationship and constraints of each table 
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES dept_info (dept_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES  employees (emp_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES dept_info (dept_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE titles ADD CONSTRAINT fk_titless_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

