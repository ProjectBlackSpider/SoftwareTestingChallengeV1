3. Which customer (customer name) has the most orders?

northwind=# select customer_id, COUNT(DISTINCT order_id) from orders GROUP BY customer_id ORDER BY 2 DESC;
 customer_id | count
-------------+-------
 SAVEA       |    31

northwind=# select * from customers where customer_id='SAVEA';
 customer_id |    company_name    |  contact_name  |    contact_title     |     address     | city  | region | postal_code | country |     phone      | fax
-------------+--------------------+----------------+----------------------+-----------------+-------+--------+-------------+---------+----------------+-----
 SAVEA       | Save-a-lot Markets | Jose Pavarotti | Sales Representative | 187 Suffolk Ln. | Boise | ID     | 83720       | USA     | (208) 555-8097 |
(1 row)
