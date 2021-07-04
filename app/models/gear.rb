class Gear < ApplicationRecord
    has_many :user_gears, dependent: :destroy
    has_many :users, through: :user_gears

    has_many :trip_gears, dependent: :destroy
    has_many :trips, through: :trip_gears

    def self.all_formatted
        all.map do |gear|
            {
                id: gear.id,
                name: gear.name,
                make_year: gear.make_year,
                status: gear.status
            }
        end
    end

    def status
        if Date.today.year - make_year > 10
            "consider replacing"
        else
            "okay"
        end
    end
end
