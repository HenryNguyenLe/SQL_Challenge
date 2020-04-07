# Employee Database Investigation | An Untold Story That Yet To Be Revealed
## Background
While performing a quick QAQC check on an old employee database, several suspicious values appeared. The decision was made to further investigate the entire database consisting of 6 different CSV files by using SQL with postgreSQL, and Python with Pandas/ MatPlotLib for visualization.  
  
  
![Image description](readmePic.jpg)  
  
  

## Overview
### Database Export & Analysis
 * Map out Entity Relation Diagram and build schema to create tables for storing all CSV files by QuickDB
 * Import CSV files into the corresponding SQL tables
 * Perform query on different categories including: names, employee number, last name, first name, department, salaries to verify data integrity and check for any suspicious values
 * Import postgreSQL database into Python and utilize Pandas & MatPlotLib to perform audit on employee salaries 
 
 ### Tools/ Techniques/ Software
 * SQL | SQLAlchemy | Python | Pandas | MatPlotLib
 * PostgresSQL | Jupyter Notebook | Visual Studio Code (VS Code)
 
 ### Investigation Findings
 After performing inspection, analysis and visualization of "salaries" table, a lot of illogical data was discovered:
* Staff & Senior Staff salaries are more than that of Manager & Technique Leader
* Senior Engineers make even less than Assistant Engineers and Engineers 
* Employee ID # 499942 name is "April Foolsday"(very suspicious)

=> Thus, this database is a self made-up and thus not reliable

## Table of Contents
* **EmployeeSQL** : folder contains all CSV files of employee database
* **.gitignore** : contains file names that are not uploaded
* **ERD_Codes** : codes input into QuickDB to generate tables and ERD
* **Entity_Relationship_Diagram(ERD).png** : picture of all tables in database with their relationship
* **PandasSQL** : Jupyter Notebook contains codes to process data from SQL into Pandas, data analysis and visualization
* **README.md** : overview of this project
* **query_tool.sql** : SQL source code of query different data from the entire database
* **readmePic.png** : picture embedded in the readme file
* **schema.sql** : SQL source code to create the "skeleton" of database tables

## IMPORTANT
* File name "general_keys.py" was not uploaded due to security reasons as it contains password and database name
* In order for the "PandasSQL.ipynb" to work properly, create a file name: "general_keys.py" in the same folder with this PandasSQL.ipynb". In the content, type in the following:  
    - sql_key = '(put password here)'
    - db_key = '(put dabase name here)'
* For example, if the password is **myPassword** and database name is **myDBname**:
    - sql_key = 'myPassword'
    - db_key = 'myDBname'
