class CreateProjectMemberships < ActiveRecord::Migration
  def self.up
    create_table :project_memberships do |t|
      t.integer :project_instance_id
      t.integer :student_id
      t.string :student_rights

      t.timestamps
    end
  end

  def self.down
    drop_table :project_memberships
  end
end
