\c hpemployee

\copy dept_emp from 'dept_emp.csv' delimiter ',' csv header;
\copy dept_info from 'dept_info.csv' delimiter ',' csv header;
\copy dept_manager from 'dept_manager.csv' delimiter ',' csv header;
\copy employees from 'employees.csv' delimiter ',' csv header;
\copy salaries from 'salaries.csv' delimiter ',' csv header;
\copy titles from 'titles.csv' delimiter ',' csv header;

