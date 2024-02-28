# python_sql_basics
## sql task
- create a database in postgres call sql_basics
- create a table in the sql_basics database and call it employees
- add the following columns to your database with the following constraints 
  - id (auto incrementable)
  - first_name
  - last_name
  - age ( must not be less than 10)
  - datetime joined
  - username (must be atleast 8 characters long)
  - salary (must not be less than 0)
  - currency DEFAULT 'EUR'
    
- add the following values to the table. (You can add more random values)
  - (john, kennedy, 19, 2020-12-02 14:35, jfkennedy, 30000, EUR)
  - (alice, kennedy, 19, 2020-02-02 14:35, allkennedy, 2000, EUR)
  - (max, kennedy, 19, 2020-12-02 14:35, maxkennedy, 9000, USD)
  - (bianca, kennedy, 19, 2020-12-02 14:35, bbkennedy, 1000, EUR)
  - (danny, kennedy, 19, 2022-05-02 14:35, dffkennedy, 20000, NGN)
  - (rachael, kennedy, 19, 2020-12-02 14:35, rcckennedy, 35000, NGN)
  - (bob, kennedy, 19, 2022-12-02 14:35, bobkennedy, 27000, EUR)
  - (peter, kennedy, 19, 2023-12-02 14:35, petekennedy, 45000, YEN)
  - (maria, kennedy, 19, 2022-12-02 14:35, mriekennedy, 5000, YEN)
  - (dwayne, kennedy, 19, 2021-10-02 14:35, dwwkennedy, 4500, EUR)
  - (karl, kennedy, 19, 2021-12-02 14:35, krlkennedy, 2000, EUR)
  - (agnes, kennedy, 19, 2020-12-02 14:35, agkennedy, 31000, EUR)

- generate the following result using a select statement
  - employees who use EUR
  - employees who use USD
  - employees who use NGN
  - employees who use YEN
  - employees who earn above 15000 EUR
  - employees who earn above 20000 YEN
  - employees who earn above 22000
  - employees who were employed in year 2020
  - employees who were employed in year 2021
  - employees who were employed in year 2022
  - employees who were employed in year 2023
  - employees who were employed in year 2024
  - employees who were employed in year 2020 and earn below 20000

- Save all your queries and put them in a file called employee_queries.sql and upload them to your repository

## Python SQL task
- use a python script to achieve the above with a psycopg2 connector
