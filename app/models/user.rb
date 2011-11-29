class User < ActiveRecord::Base

  has_many :categorizations, :dependent => :destroy
  has_many :roles, :through => :categorizations
  has_one :student

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  accepts_nested_attributes_for :student, :allow_destroy => true
  accepts_nested_attributes_for :roles, :allow_destroy => true
  accepts_nested_attributes_for :categorizations, :allow_destroy => true

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name, :role_ids, :role_names, :user_id

  def role_names
    @roles = roles
    @roles.map do |r|
      r.name.downcase
    end
  end
end
