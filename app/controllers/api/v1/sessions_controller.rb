class SessionsController < ApplicationController

    def login 
      user = Student.find_by_email(params[:email].upcase) || Teacher.find_by_email(params[:email].upcase) 
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: {
          status: 200,
          logged_in: true,
          user: TeacherSerializer.new(user) || StudentSerializer.new(user)
        }
      elsif user 
        render json: {
          status: 500,
          passwordError: ["*Wrong Password!"],
        }
      else
          render json: {
          status: 500,
          email_error: ["*Email Not Found!"]
        }
      end
    end

    def is_logged_in?
      if !!session[:user_id] && current_user
        render json: {
        logged_in: true,
        user: TeacherSerializer.new(current_user) || StudentSerializer.new(current_user) 
      }
      else
          render json: {
            logged_in: false,
            message: "No Such User!"
          }
      end
    end

    def destroy
      user = Teacher.find(session[:user_id]) || Student.find(session[:user_id]) 
      if user && session.clear
        render json: {
          status: 200,
          logged_out: true,
          user: user
        }
      end
    end

end