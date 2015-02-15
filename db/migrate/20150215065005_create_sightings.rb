class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.integer :creatures_list, :array => true
      t.timestamp :timestamp
      t.string :location
      t.string :fieldnotes

      t.timestamps null: false
    end
  end
end
