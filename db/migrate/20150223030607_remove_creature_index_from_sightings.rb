class RemoveCreatureIndexFromSightings < ActiveRecord::Migration
  def change
    remove_index :sightings, 'creatures_id'
  end
end
