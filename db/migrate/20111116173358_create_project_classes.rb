class CreateProjectClasses < ActiveRecord::Migration
  def self.up
    create_table :project_classes do |t|
      t.string   :name
      t.integer  :creator_id
      t.datetime :date_created
      t.datetime :end_date
      t.text     :description

      t.timestamps
    end
  end

  def self.down
    drop_table :project_classes
  end
end
