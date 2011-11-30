class ProjectClass < ActiveRecord::Base
  belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"
  has_many :project_instances, :dependent => :destroy

  validates :name, :description, :creator_id, :presence => true

  def readable_end_date
    end_date.strftime("%b %e - %I:%M %p")
  end

  def readable_created_at
    created_at.strftime("%b %e - %I:%M %p")
    end

  def readable_updated_at
    updated_at.strftime("%b %e - %I:%M %p")
  end
end
