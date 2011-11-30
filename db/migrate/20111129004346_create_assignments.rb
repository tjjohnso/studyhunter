class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.integer :project_class_id
      t.integer :university_id
      t.integer :course_id
      t.timestamps
    end
  end

  def self.down
    drop_table :assignments
  end
end
