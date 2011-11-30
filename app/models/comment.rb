class Comment < ActiveRecord::Base
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  belongs_to :project_instance

  validates :body, :project_instance_id, :author_id, :presence => true
end
