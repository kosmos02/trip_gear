class UsersController < ApplicationController

    before_action :find_user, only: :destroy

    def index
        users= User.all 
        render json: users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: {message: user.errors.full_messages[0]}
        end
    end

    def destroy
        @user.destroy
        render json: {message: `sad to see you go #{@user.username}`}
    end

    private

    def user_params
        params.require(:user).permit(:username, gear_ids: [])
    end

    # def find_user
    #     @user = User.find(params[:id])
    # end


end
