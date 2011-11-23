class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps
      t.string :amenities
      t.float :overall_rating

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
