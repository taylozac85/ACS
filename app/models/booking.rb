class Booking < ActiveRecord::Base
  attr_accessible :date, :sheets, :time, :washer, :description
  belongs_to :user

  validates :date, :presence => true
end
