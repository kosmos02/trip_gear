class GearsController < ApplicationController

    def index
        gears = Gear.all
        render json: gears, methods: :status
    end

    def check_gear_status

    end
end
