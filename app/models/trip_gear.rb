class TripGear < ApplicationRecord
  belongs_to :trip
  belongs_to :gear

  validates :gear_id. uniqueness: {scope: :trip_id, message: 'has already been added to trip gear list'} 
end
