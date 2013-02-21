class UserMailer < ActionMailer::Base
  default :from => "zach@joinhummingbird.com"

  def registration_confirmation(user)
  	@user = user
  	@url = "www.joinhummingbird.com"
  	mail(:to => user.email, :subject => "Registered")
  end

  def booking_notification(user)
  	@user = user
  	@booking = @user.bookings.last
  	mail(:to => "zach@joinhummingbird.com", 
  		 :subject => "New Booking",
  		 :template_path => 'user_mailer',
  		 :template_name => 'booking_notification')
  end
end
