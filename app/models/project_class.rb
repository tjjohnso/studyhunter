class ProjectClass < ActiveRecord::Base
  belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"
  has_many :project_instances

  validates :name, :description, :creator_id, :presence => true
end
