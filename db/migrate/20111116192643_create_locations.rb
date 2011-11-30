class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      # t.string :address
      t.string :street
      t.string :city
      t.string :country
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
