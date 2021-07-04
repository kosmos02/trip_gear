class User < ApplicationRecord
    has_many :user_gears, dependent: :destroy
    has_many :gears, through: :user_gears
    validates :username, uniqueness: true
end
