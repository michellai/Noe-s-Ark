class Sighting < ActiveRecord::Base
    belongs_to :users
    has_many :creatures
    has_many :photos, as: :imageable
end
