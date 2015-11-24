class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
# 20151124 use cancanca to set user roles 
  include CanCan::ControllerAdditions
end
