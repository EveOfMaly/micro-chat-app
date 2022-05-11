class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def new
        user = User.new(user_params)
        render json: user
    end

    def create
    #   if a user is found log in as that user 
    # if the user is not create the new user 
    
    if User.find_by(username: user_params[:username])
        user = User.find_by(username: user_params[:username])
        render json: user
    else 
        user = User.create(user_params)
        user.save 
        render json: user
    end

    private

    def user_params
        params.requre(:user).permit(:username)
    end
end
