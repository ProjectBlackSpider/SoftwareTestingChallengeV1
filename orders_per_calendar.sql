4. How many orders were made each calendar year (since the beginning of 1996) in this database?

northwind=# SELECT COUNT(DISTINCT order_id) FROM orders;
 count
-------
   830
(1 row)

northwind=# SELECT date_part('year',order_date)FROM orders group by date_part('year',order_date);
 date_part
-----------
      1996
      1998
      1997
(3 rows)

Thus

Answer 

northwind=# SELECT date_part('year',order_date),COUNT(DISTINCT order_id) FROM orders group by date_part('year',order_date);
 date_part | count
-----------+-------
      1996 |   152
      1997 |   408
      1998 |   270
(3 rows)
