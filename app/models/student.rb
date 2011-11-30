class Student < ActiveRecord::Base
  belongs_to :user
  belongs_to :university

  #attr_accessible :user_id, :university_id, :major, :rating  # I'll just let everything be accessible.

  accepts_nested_attributes_for :university
end
