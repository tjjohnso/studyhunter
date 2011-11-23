class CreateStudySessions < ActiveRecord::Migration
  def self.up
    create_table :study_sessions do |t|
      t.integer :project_instance_id
      t.integer :location_id
      t.datetime :meeting_date

      t.timestamps
    end
  end

  def self.down
    drop_table :study_sessions
  end
end
