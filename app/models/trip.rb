class Trip < ApplicationRecord
    has_many :trip_gears, dependent: :destroy
    has_many: :gears, through: :trip_gears

    accepts_nested_attributes_for :gears
end
