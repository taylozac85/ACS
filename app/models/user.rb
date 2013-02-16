class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number
  has_many :bookings

  # def booking_attributes=(booking_attributes)
  #	booking_attributes.each do |attributes|
  #		bookings.build(attributes)
  #	end
  # end

end
