class Categorization < ActiveRecord::Base
  belongs_to :user
  belongs_to :role

  accepts_nested_attributes_for :role, :allow_destroy => true
end