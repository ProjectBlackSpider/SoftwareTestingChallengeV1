postgres=# \c northwind
You are now connected to database "northwind" as user "postgres".
northwind=# \dt
                 List of relations
 Schema |          Name          | Type  |  Owner
--------+------------------------+-------+----------
 public | categories             | table | postgres
 public | customer_customer_demo | table | postgres
 public | customer_demographics  | table | postgres
 public | customers              | table | postgres
 public | employee_territories   | table | postgres
 public | employees              | table | postgres
 public | order_details          | table | postgres
 public | orders                 | table | postgres
 public | products               | table | postgres
 public | region                 | table | postgres
 public | shippers               | table | postgres
 public | suppliers              | table | postgres
 public | territories            | table | postgres
 public | us_states              | table | postgres
(14 rows)

1. How many customers does this database contain?

Query "select COUNT(*) from customers;"

northwind=# select COUNT(*) from customers;
 count
-------
    91
(1 row)
