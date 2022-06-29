class UsersController < ApplicationController
    def index
        @users = User.all.select(:id, :name, :email)
        render json: @users
        #.pluck(:id, :name, :email)
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_url(@user)
        else
            render json: @user.error.full_messages, status: :unprocessable_entity
        end
        # replace the `user_attributes_here` with the actual attribute keys
    end

    def user_params
        params.require(:user).permit(:name, :email)
    end

    def show
        @user = User.find(params[])
        render json: @user
    end
end