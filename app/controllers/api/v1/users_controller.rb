# class Api::V1::UsersController < ApplicationController
#   def index 
#     users = User.all.where(deleted: true)
#     if users.length > 0
#       render json: {
#         status: 200,
#         users: UserSerializer.new(users)
#       }
#     else 
#       render json: {
#         status: 409, 
#         message: ["No user found!"]
#       }
#     end
#   end

#   def create 
#     user = User.new(user_params)
#     if user.save
#       session[:user_id] = user.id
#       render json: {
#         status: "created",
#         user: UserSerializer.new(user)
#       }
#     else
#       render json: {
#         status: 409,
#         passwordError: user.errors.messages[:password],
#         password_confirmation_error: user.errors.messages[:password],
#         first_name_error: user.errors.messages[:first_name],
#         last_name_error: user.errors.messages[:last_name],
#         email_error: user.errors.messages[:email],
#         image_error: user.errors.messages[:image],
#         major_error: user.errors.messages[:major],
#         base_error: user.errors.messages[:base],
#         department_error: user.errors.messages[:department]
#       }
#     end
#   end

#   private 
#   def user_params
#     params.require(:user).permit(:first_name, :last_name, :email, :image, :remember_me, :major, :department, :admin, :teacher, :student, :password, :password_confirmation)
#   end

# end