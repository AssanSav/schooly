class SessionsController < ApplicationController

    def login 
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: {
          status: 200,
          logged_in: true,
          user: UserSerializer.new(user)
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

    
end