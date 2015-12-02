class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  
  def authenticate_passenger!
    redirect_to root_path unless user_signed_in? && current_passenger.is_passenger?
    redirect_to root_path unless user_signed_out? && current_passenger.is_passenger?
  end

  def authenticate_driver!
    redirect_to system_path unless user_signed_in? && current_driver.is_driver?
  end
    
  def authenticate_user!
    redirect_to system_path unless user_signed_in? && current_user.is_user?
  end
    
  def authenticate_admin!
    redirect_to system_path unless user_signed_in? && current_admin.is_admin?
  end
  
  layout :plantilla_by_resource

  def plantilla_by_resource
    'plantilla'
  end
  
  before_filter :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :lastname, :identitydocument, :birthdate, :email, :password, :password_confirmation)
    end
  end
end
