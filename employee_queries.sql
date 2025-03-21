CREATE TABLE IF NOT EXISTS employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INTEGER CHECK (age >= 10),
    joined_at TIMESTAMP,
    username VARCHAR(255) CHECK (LENGTH(username) >= 8),
    salary NUMERIC CHECK (salary >= 0),
    currency VARCHAR(3) DEFAULT 'EUR'
);

INSERT INTO employees (first_name, last_name, age, joined_at, username, salary, currency) VALUES
('john', 'kennedy', 19, '2020-12-02 14:35', 'jfkennedy', 30000, 'EUR'),
('alice', 'kennedy', 19, '2020-02-02 14:35', 'allkennedy', 2000, 'EUR'),
('max', 'kennedy', 19, '2020-12-02 14:35', 'maxkennedy', 9000, 'USD'),
('bianca', 'kennedy', 19, '2020-12-02 14:35', 'bbkennedy', 1000, 'EUR'),
('danny', 'kennedy', 19, '2022-05-02 14:35', 'dffkennedy', 20000, 'NGN'),
('rachael', 'kennedy', 19, '2020-12-02 14:35', 'rcckennedy', 35000, 'NGN'),
('bob', 'kennedy', 19, '2022-12-02 14:35', 'bobkennedy', 27000, 'EUR'),
('peter', 'kennedy', 19, '2023-12-02 14:35', 'petekennedy', 45000, 'YEN'),
('maria', 'kennedy', 19, '2022-12-02 14:35', 'mriekennedy', 5000, 'YEN'),
('dwayne', 'kennedy', 19, '2021-10-02 14:35', 'dwwkennedy', 4500, 'EUR'),
('karl', 'kennedy', 19, '2021-12-02 14:35', 'krlkennedy', 2000, 'EUR'),
('agnes', 'kennedy', 19, '2020-12-02 14:35', 'agkennedy', 31000, 'EUR');

--employees who use EUR
SELECT * FROM employees WHERE currency = 'EUR';
--employees who use USD
SELECT * FROM employees WHERE currency = 'USD';
--employees who use NGN
SELECT * FROM employees WHERE currency = 'NGN';
--employees who use YEN
SELECT * FROM employees WHERE currency = 'YEN';
--employees who earn above 15000 EUR
SELECT * FROM employees WHERE salary > 15000 AND currency = 'EUR';
--employees who earn above 20000 YEN
SELECT * FROM employees WHERE salary > 20000 AND currency = 'YEN';
--employees who earn above 22000
SELECT * FROM employees WHERE salary > 22000;
--employees who were employed in year 2020
SELECT * FROM employees WHERE EXTRACT(YEAR FROM joined_at) = 2020;
--employees who were employed in year 2021
SELECT * FROM employees WHERE EXTRACT(YEAR FROM joined_at) = 2021;
--employees who were employed in year 2022
SELECT * FROM employees WHERE EXTRACT(YEAR FROM joined_at) = 2022;
--employees who were employed in year 2023
SELECT * FROM employees WHERE EXTRACT(YEAR FROM joined_at) = 2023;
--employees who were employed in year 2024
SELECT * FROM employees WHERE EXTRACT(YEAR FROM joined_at) = 2024;
--employees who were employed in year 2020 and earn below 20000
SELECT * FROM employees WHERE EXTRACT(YEAR FROM joined_at) = 2020 AND salary < 20000;
