class User < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number, :address, :bookings_attributes
  has_many :bookings, :dependent => :destroy

  accepts_nested_attributes_for :bookings

  validates :name, :presence => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, 
  					:format => { with: VALID_EMAIL_REGEX }
  					# :uniqueness => { :case_sensitive => false }  
  VALID_PHONE_REGEX = %r{(1)?(?:-)?(?:\(|-)?([\d]{3})(?:\.|\-|\))([\d]{3})(?:\.|\-)([\d]{4})(?: ?x([\d]{3,5}))?}
  validates :phone_number, :presence => true, 
  						   :format => { with: VALID_PHONE_REGEX }
  validates :address, :presence => true

end
