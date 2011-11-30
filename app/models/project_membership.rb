class ProjectMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :project_instance

  validates :project_instance_id, :user_id, :presence => true
end
