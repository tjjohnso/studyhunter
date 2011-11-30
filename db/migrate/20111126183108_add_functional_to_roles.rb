class AddFunctionalToRoles < ActiveRecord::Migration
  def self.up
    add_column :roles, :functional, :boolean
  end

  def self.down
    remove_column :roles, :functional
  end
end
