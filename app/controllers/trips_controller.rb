class TripsController < ApplicationController

    def index
        trips = Trip.includes(:gears).all
        render json: trips
    end

    def create
        trip = Trip.create(trip_params)
        if trip.valid?
            render json: trip, include: {:gears => {only: :name}} status: :created
        else
            render json: {message: 'somethign went wrong'}, status: :unprocessable entity
    end

    private

    def trip_params 
        params.require(:trip).permit(:location, :details, :gear_ids => [], gears_attributes: [:name, :make_year])
    end



end
