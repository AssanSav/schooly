class Api::V1::UsersController < ApplicationController
  def index 
    users = User.all
    if users.length > 0
      render json: {
        status: 200,
        users: UserSerializer.new(users)
      }
    else 
      render json: {
        status: 409, 
        message: ["No user found!"]
      }
    end
  end

end