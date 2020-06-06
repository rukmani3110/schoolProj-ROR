#user table(Admin)

User.delete_all

User.create(username: "Admin", password:"admin@123", email: "admin@gmail.com")

#Teacher model

Teacher.delete_all

Teacher.create(name: "Mathew",email: "mathew@gmail.com",password:"mathew@123",gender:"M")
Teacher.create(name: "Malika",email: "malika@gmail.com",password:"malika@123",gender:"F")


#class model

Section.delete_all

Section.create(class_name: "VI",section: "AB",code: "VIAB")
Section.create(class_name: "VII",section: "AB",code: "VIIAB")


#Student model

Student.delete_all

Student.create(name: "Vinay",code: "stu01",gender: "M", class_code:"VIAB")
Student.create(name: "Tim",code: "stu02",gender: "M", class_code:"VIAB")
Student.create(name: "Jack",code: "stu03",gender: "M", class_code:"VIAB")
Student.create(name: "Peter",code: "stu04",gender: "F", class_code:"VIAB")
Student.create(name: "Helen",code: "stu05",gender: "F", class_code:"VIAB")


Student.create(name: "Kylie",code: "stu08",gender: "F", class_code:"VIIAB")
Student.create(name: "kendel",code: "stu09",gender: "F", class_code:"VIIAB")
Student.create(name: "Kourt",code: "stu10",gender: "F", class_code:"VIIAB")


#Subject model

Subject.delete_all

Subject.create(name: "Maths", code: "Mat123", class_code:"VIAB",teacher_email:"mathew@gmail.com")
Subject.create(name: "Science", code: "Sci123", class_code:"VIAB",teacher_email:"mathew@gmail.com")
Subject.create(name: "History", code: "Hist123", class_code:"VIAB",teacher_email:"mathew@gmail.com")


Subject.create(name: "Maths1", code: "Maths123", class_code:"VIIAB",teacher_email:"malika@gmail.com")
Subject.create(name: "Sciene I", code: "bot123", class_code:"VIIAB",teacher_email:"malika@gmail.com")


#Mark model

Mark.delete_all


Mark.create(sub_code: "Mat123", sub_name: "Maths", stu_code: "stu01", stu_name: "Vinay", marks: 45)
Mark.create(sub_code: "Mat123", sub_name: "Maths", stu_code: "stu02", stu_name: "Tim", marks: 67)
Mark.create(sub_code: "Mat123", sub_name: "Maths", stu_code: "stu03", stu_name: "Jack", marks: 67)
Mark.create(sub_code: "Mat123", sub_name: "Maths", stu_code: "stu04", stu_name: "Peter", marks: 67)
Mark.create(sub_code: "Mat123", sub_name: "Maths", stu_code: "stu05", stu_name: "Helen", marks: 88)


Mark.create(sub_code: "Sci123", sub_name: "Science", stu_code: "stu01", stu_name: "Vinay", marks: 75)
Mark.create(sub_code: "Sci123", sub_name: "Science", stu_code: "stu02", stu_name: "Tim", marks: 95)
Mark.create(sub_code: "Sci123", sub_name: "Science", stu_code: "stu03", stu_name: "Jack", marks: 95)
Mark.create(sub_code: "Sci123", sub_name: "Science", stu_code: "stu04", stu_name: "Peter", marks: 95)
Mark.create(sub_code: "Sci123", sub_name: "Science", stu_code: "stu05", stu_name: "Helen", marks: 64)



Mark.create(sub_code: "Hist123", sub_name: "History", stu_code: "stu01", stu_name: "Vinay", marks: 56)
Mark.create(sub_code: "Hist123", sub_name: "History", stu_code: "stu02", stu_name: "Tim", marks: 40)
Mark.create(sub_code: "Hist123", sub_name: "History", stu_code: "stu03", stu_name: "Jack", marks: 40)
Mark.create(sub_code: "Hist123", sub_name: "History", stu_code: "stu04", stu_name: "Peter", marks: 40)
Mark.create(sub_code: "Hist123", sub_name: "History", stu_code: "stu05", stu_name: "Helen", marks: 99)


Mark.create(sub_code: "Maths123", sub_name: "Maths1", stu_code: "stu08", stu_name: "Kylie", marks: 65)
Mark.create(sub_code: "Maths123", sub_name: "Maths1", stu_code: "stu09", stu_name: "Kendal", marks: 90)
Mark.create(sub_code: "Maths123", sub_name: "Maths1", stu_code: "stu10", stu_name: "Kourt", marks: 80)

Mark.create(sub_code: "bot123", sub_name: "Science I", stu_code: "stu08", stu_name: "Kylie", marks: 65)
Mark.create(sub_code: "bot123", sub_name: "Science I", stu_code: "stu09", stu_name: "Kendal", marks: 90)
Mark.create(sub_code: "bot123", sub_name: "Science I", stu_code: "stu10", stu_name: "Kourt", marks: 80)
