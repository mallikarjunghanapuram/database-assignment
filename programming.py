# connect to the database
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="toor",
  port = 3306,
  database='student_info'
)

# create a cursor for acessing data
mycursor = mydb.cursor()

# query all students names in the database
mycursor.execute("SELECT Student_Name FROM Student_Details")

# print each student name
for name in mycursor:
  print(name[0])
