class UserGearsController < ApplicationController

    def create
        user_gear = UserGear.create(user_gear_params)
        if user_gear.valid?
            render json: user_gear
        else
            render json: {message: user_gear.errors.full_messages[0]}
        end
    end

    private

    def user_gear_params
        params.require(:user_gear).permit(:user_id, :gear_id)
    end
end
