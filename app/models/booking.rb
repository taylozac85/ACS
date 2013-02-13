class Booking < ActiveRecord::Base
  attr_accessible :date, :sheets, :time, :washer
  belongs_to :user
end
