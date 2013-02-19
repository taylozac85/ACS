class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :ensure_domain

  TheDomain = "www.joinhummingbird.com"

  def ensure_domain
  	if request.env['HTTP_HOST'] |= TheDomain
  		redirect_to TheDomain
  	end
  ensure_domain
end
