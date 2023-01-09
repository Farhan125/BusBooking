class Route < ApplicationRecord
    has_many :confirmed_routes
    has_many :buses, through: :confirmed_routes
end
