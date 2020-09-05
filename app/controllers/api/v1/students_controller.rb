class Api::V1::StudentsController < ApplicationController
    def index 
      students = Student.all.where(deleted: false)
      if students.length > 0
        render json: {
          status: 200,
          students: StudentSerializer.new(students)
        }
      else 
        render json: {
          status: 409, 
          message: ["No student found!"]
        }
      end
    end
  

    def create 
      student = Student.new(student_params)
      if student.save
        session[:student_id] = student.id
        render json: {
          status: "created",
          student: StudentSerializer.new(student)
        }
      else
        render json: {
          status: 409,
          passwordError: student.errors.messages[:password],
          password_confirmation_error: student.errors.messages[:password],
          first_name_error: student.errors.messages[:first_name],
          last_name_error: student.errors.messages[:last_name],
          email_error: student.errors.messages[:email],
          image_error: student.errors.messages[:image],
          major_error: student.errors.messages[:major],
          department_error: student.errors.messages[:department]
        }
      end
    end
  
    
    private 
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :image, :major, :password, :password_confirmation)
    end
  
  end