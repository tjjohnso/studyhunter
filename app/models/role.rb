class Role < ActiveRecord::Base
  has_many :categorizations
  has_many :users, :through => :categorizations
end
