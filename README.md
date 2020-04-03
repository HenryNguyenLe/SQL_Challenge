# Employee Database Investigation : An Untold Story
## Background
While performing a quick QAQC check on an old employee database, several suspicious values appeared. The decision was made to further investigate the entire database consisting of 6 different CSV files by using SQL with postgreSQL, and Python with Pandas for visualization. 
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
 * Visualization of Salaries Data showed illogical data
 
