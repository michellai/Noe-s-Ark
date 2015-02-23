class AddSightingIdToCreatures < ActiveRecord::Migration
  def change
    add_reference :sightings, :creature, index: true
  end
end
