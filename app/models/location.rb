class Location < ActiveRecord::Base

  acts_as_gmappable

  def gmaps4rails_address
    # Describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    # The example on Github has the following code-- "#{self.street}, #{self.city}, #{self.country}" -- but we only have an
    # address column so our code will be:
    address
  end

end
