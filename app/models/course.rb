class Course < ActiveRecord::Base
  belongs_to :university
  has_many :assignments

  validates :name, :university_id, :presence => true

  accepts_nested_attributes_for :university
end
