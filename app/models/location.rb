class Location < ActiveRecord::Base
  has_many :study_sessions, :dependent => :destroy
  has_many :project_instances, :through => :study_sessions

  validates :name, :presence => true

  acts_as_gmappable

  def gmaps4rails_address
    # Describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    address
  end

  def address
    "#{self.street}, #{self.city}, #{self.country}"
  end
end
