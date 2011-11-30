class ProjectInstance < ActiveRecord::Base
  has_many :project_memberships, :dependent => :destroy
  has_many :users, :through => :project_memberships

  has_many :study_sessions, :dependent => :destroy
  has_many :locations, :through => :study_sessions

  belongs_to :project_class
  has_many :comments, :dependent => :destroy

  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"

  validates :project_class_id, :owner_id, :presence => true

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
