import psycopg2
import csv
import decimal

username = 'postgres'
password = '25012002'
database = 'lab2_database'
host = 'localhost'
port = '5432'

INPUT_CSV_FILE = 'bestsellers_with_categories.csv'

query_0 = '''
CREATE TABLE books_new(
  books_id 	char(10000)  NOT NULL,
  books_name	char(10000)  NOT NULL,
  books_author 	char(10000)  NOT NULL,
  CONSTRAINT pk_books_new PRIMARY KEY (books_id)
)
'''
query_1 = '''
DELETE FROM books_new
'''

query_2 = '''
INSERT INTO books_new (books_id, books_name, books_author) VALUES (%s, %s, %s)
'''
conn = psycopg2.connect(user=username, password=password, dbname=database)

with conn:
    cur = conn.cursor()

    cur.execute('DROP TABLE IF EXISTS books_new')
    cur.execute(query_0)
    cur.execute(query_1)

    with open(INPUT_CSV_FILE, 'r',  encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for idx, row in enumerate(reader):
            values = (idx, row['Name'], row['Author'])
            cur.execute(query_2, values)

    conn.commit()
