class UserMailer < ActionMailer::Base
  default :from => "zach@joinhummingbird.com"

  def registration_confirmation(user)
  	@user = user
  	@url = "www.joinhummingbird.com"
  	mail(:to => user.email, :subject => "Registered")
  end
end
