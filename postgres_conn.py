import psycopg2
 
db_name = 'sql_basics'
db_host = 'localhost'
db_user = 'postgres'
db_password = 'Wanderlust1978'

try:
    db_connections = psycopg2.connect(
        database=db_name,
        user=db_user,
        password=db_password,
        host=db_host
    )
    cursor = db_connections.cursor()
except Exception as error:
    print(error)
else:
    print('Database connection succesfull')


select_company_items = '''
SELECT * FROM employees WHERE EXTRACT(YEAR FROM joined_at) = 2020 AND salary < 20000;
'''
cursor.execute(select_company_items)
col_names = []
for col in cursor.description:
    col_names.append(col.name)
data = cursor.fetchall()

for item in data:
    print(dict(zip(col_names, item)))
