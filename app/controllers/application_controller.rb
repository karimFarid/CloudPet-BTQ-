class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
   before_filter :set_timezone
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :date_of_birth, :remember_me, :gender) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :current_password, :date_of_birth, :image, :gender) }
  end



 def set_timezone
   Time.zone = 'GMT'
 end
end
