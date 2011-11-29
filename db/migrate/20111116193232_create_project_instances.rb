class CreateProjectInstances < ActiveRecord::Migration
  def self.up
    create_table :project_instances do |t|
      t.string   :name
      t.text     :description
      t.datetime :end_date
      t.datetime :date_instantiated
      t.datetime :date_last_modified
      t.integer  :project_class_id
      t.integer  :owner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_instances
  end
end
