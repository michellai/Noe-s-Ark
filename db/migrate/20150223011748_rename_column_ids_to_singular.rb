class RenameColumnIdsToSingular < ActiveRecord::Migration
  def change
    rename_column :creatures, :sightings_id, :sighting_id
    rename_column :sightings, :users_id, :user_id
  end
end
