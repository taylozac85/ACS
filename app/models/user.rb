class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number
  has_many :bookings
end
