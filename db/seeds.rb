# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.new(first_name: "teacher_first_name", last_name: "teacher_last_name", email: "assane.savadogo81@gmail.com", department: "tech", admin: false,  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSgMTnyu57w3n7MiSYwH99BIzbT-5HoQUA8Jw&usqp=CAU", password: "assane", password_confirmation: "assane", deleted: false)

Student.create(first_name: "student_first_name", last_name: "student_last_name", email: "test_student@gmail.com", major: "computer science", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSgMTnyu57w3n7MiSYwH99BIzbT-5HoQUA8Jw&usqp=CAU", password: "assane", password_confirmation: "assane", deleted: false)