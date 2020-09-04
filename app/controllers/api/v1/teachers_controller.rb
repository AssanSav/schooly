class Api::V1::TeachersController < ApplicationController
  def index 
    teachers = Teacher.all.where(deleted: false)
    if teachers.length > 0
      render json: {
        status: 200,
        teachers: TeacherSerializer.new(teachers)
      }
    else 
      render json: {
        status: 409, 
        message: ["No teacher found!"]
      }
    end
  end

  def create 
    teacher = Teacher.new(teacher_params)
    if teacher.save
      session[:teacher_id] = teacher.id
      render json: {
        status: "created",
        teacher: TeacherSerializer.new(teacher)
      }
    else
      render json: {
        status: 409,
        passwordError: teacher.errors.messages[:password],
        password_confirmation_error: teacher.errors.messages[:password],
        first_name_error: teacher.errors.messages[:first_name],
        last_name_error: teacher.errors.messages[:last_name],
        email_error: teacher.errors.messages[:email],
        image_error: teacher.errors.messages[:image],
        base_error: teacher.errors.messages[:base],
        department_error: teacher.errors.messages[:department]
      }
    end
  end

  private 
  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :email, :image, :department, :admin, :password, :password_confirmation)
  end

end