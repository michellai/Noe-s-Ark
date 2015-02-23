class Creature < ActiveRecord::Base
    has_many :sightings
    has_many :users, through: :sightings
    has_many :photos, as: :imageable
end
