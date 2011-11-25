class Location < ActiveRecord::Base

  acts_as_gmappable

  def gmaps4rails_address
    # Describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    address
  end

  def address
    "#{self.street}, #{self.city}, #{self.country}"
  end
end
