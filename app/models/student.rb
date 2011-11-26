class Student < ActiveRecord::Base

  belongs_to :user

  attr_accessible :university_id, :major, :rating
end
