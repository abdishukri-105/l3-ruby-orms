require 'bundler'
Bundler.require

DB = { conn: SQLite3::Database.new("db/school.db") }

require_relative '../lib/student'





# RUN CODE FROM HERE

# create a table

Student.create_table

# student data
shukri = Student.new(name: "shukri", age: 12)

# insert record
shukri.create

# view all students
Student.all

# update student data
shukri.age = 21
shukri.update

Student.all

# DELETE 
shukri.destroy

Student.all
