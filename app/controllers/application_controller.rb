class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :setup_guests

  def setup_guests
    @guest = Guest.new(attending: true)
  end
end
