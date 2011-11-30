class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :body
      t.integer :project_instance_id
      t.integer :author_id
      t.datetime :date_created

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
