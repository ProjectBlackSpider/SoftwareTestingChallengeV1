2. What is the average number of reports per employee in this database and how many of the employees have reports higher than this average?

northwind=# select avg(employees.reports_to) from employees;
        avg
--------------------
 3.1250000000000000
(1 row)

northwind=# select COUNT(*) from employees where employees.reports_to >3;
 count
-------
     3
(1 row)