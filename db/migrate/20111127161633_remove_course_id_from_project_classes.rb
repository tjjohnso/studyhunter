class RemoveCourseIdFromProjectClasses < ActiveRecord::Migration
  def self.up
    remove_column :project_classes, :course_id
  end

  def self.down
    add_column :project_classes, :course_id, :integer
  end
end
