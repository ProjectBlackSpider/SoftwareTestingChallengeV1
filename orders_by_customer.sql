5. How many orders did customer “Simons bistro” have shipped via shipper “United Package”? 

northwind=# select * from customers where company_name LIKE '%Simons bistro%';
 customer_id | company_name  |  contact_name  | contact_title |    address    |   city    | region | postal_code | country |    phone    |     fax
-------------+---------------+----------------+---------------+---------------+-----------+--------+-------------+---------+-------------+-------------
 SIMOB       | Simons bistro | Jytte Petersen | Owner         | Vinbæltet 34 | Kobenhavn |        | 1734        | Denmark | 31 12 34 56 | 31 13 35 57
(1 row)

*
northwind=# Select * from orders where customer_id ='SIMOB';
 order_id | customer_id | employee_id | order_date | required_date | shipped_date | ship_via | freight |   ship_name   | ship_address  | ship_city | ship_reg
ion | ship_postal_code | ship_country
----------+-------------+-------------+------------+---------------+--------------+----------+---------+---------------+---------------+-----------+---------
----+------------------+--------------
    10341 | SIMOB       |           7 | 1996-10-29 | 1996-11-26    | 1996-11-05   |        3 |   26.78 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark
    10417 | SIMOB       |           4 | 1997-01-16 | 1997-02-13    | 1997-01-28   |        3 |   70.29 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark
    10556 | SIMOB       |           2 | 1997-06-03 | 1997-07-15    | 1997-06-13   |        1 |     9.8 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark
    10642 | SIMOB       |           7 | 1997-08-22 | 1997-09-19    | 1997-09-05   |        3 |   41.89 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark
    10669 | SIMOB       |           2 | 1997-09-15 | 1997-10-13    | 1997-09-22   |        1 |   24.39 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark
    10802 | SIMOB       |           4 | 1997-12-29 | 1998-01-26    | 1998-01-02   |        2 |  257.26 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark
    11074 | SIMOB       |           7 | 1998-05-06 | 1998-06-03    |              |        2 |   18.44 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark
(7 rows)


northwind=# select * from shippers;
 shipper_id |   company_name    |     phone
------------+-------------------+----------------
          1 | Speedy Express    | (503) 555-9831
          2 | United Package    | (503) 555-3199
          3 | Federal Shipping  | (503) 555-9931
          4 | Alliance Shippers | 1-800-222-0451
          5 | UPS               | 1-800-782-7892
          6 | DHL               | 1-800-225-5345
(6 rows)

northwind=# SELECT * FROM orders o INNER JOIN shippers s ON s.shipper_id = o.ship_via WHERE o.ship_via = 2 and o.customer_id='SIMOB';
 order_id | customer_id | employee_id | order_date | required_date | shipped_date | ship_via | freight |   ship_name   | ship_address  | ship_city | ship_reg
ion | ship_postal_code | ship_country | shipper_id |  company_name  |     phone
----------+-------------+-------------+------------+---------------+--------------+----------+---------+---------------+---------------+-----------+---------
----+------------------+--------------+------------+----------------+----------------
    10802 | SIMOB       |           4 | 1997-12-29 | 1998-01-26    | 1998-01-02   |        2 |  257.26 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark      |          2 | United Package | (503) 555-3199
    11074 | SIMOB       |           7 | 1998-05-06 | 1998-06-03    |              |        2 |   18.44 | Simons bistro | Vinbæltet 34 | Kobenhavn |          
  | 1734             | Denmark      |          2 | United Package | (503) 555-3199
(2 rows)

Therefore 2


Answer

northwind=# SELECT COUNT(*) FROM orders o INNER JOIN shippers s ON s.shipper_id = o.ship_via WHERE o.ship_via = 2 and o.customer_id='SIMOB';
 count
-------
     2
(1 row)


