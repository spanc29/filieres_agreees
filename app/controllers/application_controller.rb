class ApplicationController < ActionController::Base
  include ControllerAuthentication
  include Userstamp

  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
