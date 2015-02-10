class RemoveSightingFromCreatures < ActiveRecord::Migration
  def change
      remove_column :creatures, :sighting_datetime, :datetime
      remove_column :creatures, :sighting_location, :string
      remove_column :creatures, :photo, :binary
      add_column :creatures, :photos, :binary, :array => true
  end
end
