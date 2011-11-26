class Student < ActiveRecord::Base

  belongs_to :user

  attr_accessible :user_id, :university_id, :major, :rating
end
