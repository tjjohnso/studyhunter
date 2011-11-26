class User < ActiveRecord::Base
  has_many :categorizations
  has_many :roles, :through => :categorizations
  has_one :student

  accepts_nested_attributes_for :student, :roles, :categorizations, :allow_destroy => true

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

  validates :first_name, :presence => true
  validates :last_name, :presence => true
end
