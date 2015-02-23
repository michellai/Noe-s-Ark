class AddCreatureIdToSightings < ActiveRecord::Migration
  def change
    add_reference :creatures, :sighting, index: true
  end
end
