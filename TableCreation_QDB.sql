-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "department" (
    "dept_no" string   NOT NULL,
    "dept_name" VACHAR(100)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_employee" (
    "emp_no" int   NOT NULL,
    "dept_no" string   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_manager" (
    "emp_no" int   NOT NULL,
    "dept_no" string   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "employee_info" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "fname" string   NOT NULL,
    "lname" string   NOT NULL,
    "gender" string   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employee_info" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salary" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_salary" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "title" (
    "emp_no" int   NOT NULL,
    "title" string   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" dat   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "dept_employee" ADD CONSTRAINT "fk_dept_employee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_employee" ("emp_no");

ALTER TABLE "employee_info" ADD CONSTRAINT "fk_employee_info_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_employee" ("emp_no");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_employee" ("emp_no");

ALTER TABLE "title" ADD CONSTRAINT "fk_title_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_employee" ("emp_no");

