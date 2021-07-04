class TripGearsController < ApplicationController

    def create
        trip_gear = TripGear.create(trip_gear_params)
        if trip_gear.valid?
            render json: trip_gear, status: :created
        else
            render json: {message: trip_gear.erros.full_messages[0]}, status: :unprocessable_entity
        end
    
    end

    private

    def trip_gear_params
        params.require(:trip_gear).permit(:gear_id, :trip_id)
    end
end
