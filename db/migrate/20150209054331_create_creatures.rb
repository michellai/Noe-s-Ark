class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :common_name
      t.string :scientific_name
      t.binary :photo
      t.timestamp :sighting_datetime
      t.string :sighting_location
      t.string :notes

      t.timestamps null: false
    end
  end
end
