class Comment < ActiveRecord::Base
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  belongs_to :project_instance

  validates :body, :project_instance_id, :presence => true

  def readable_created_at
    created_at.strftime("%b %e - %I:%M %p")
    end

  def readable_updated_at
    updated_at.strftime("%b %e - %I:%M %p")
  end
end
