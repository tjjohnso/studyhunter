class University < ActiveRecord::Base
  validates :name, :presence => true

  has_many :students
  has_many :courses
  has_many :assignments # This is not normalized. I should remove this because a course has a univ_id
end
