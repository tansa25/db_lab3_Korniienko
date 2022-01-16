import csv
import json
import psycopg2


username = 'postgres'
password = '25012002'
database = 'lab2_database'
host = 'localhost'
port = '5432'



TABLES = [
    'Genre',
    'Author',
    'Period',
    'Books'
]


conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

data = {}
with conn:
    cur = conn.cursor()

    for tablename in TABLES:
        cur.execute('SELECT * FROM ' + tablename)
        rows = []
        fields = [x[0] for x in cur.description]

        for row in cur:
            rows.append(dict(zip(fields, row)))

        data[tablename] = rows

with open('all_data.json', 'w') as outf:
    json.dump(data, outf, default=str)
