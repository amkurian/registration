class ApplicationController < ActionController::Base
  
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 

 rescue_from CanCan::AccessDenied do |exception|
  flash[:error] = "Access denied!"
  redirect_to root_url
end


  protect_from_forgery with: :exception
  def configure_permitted_parameters
      #devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:user_name, :email, :password) }
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :middle_name, :last_name, :email, :logid, :password, :password_confirmation, :employee_id, :date_of_birth, :gender, :time_zone, :designation_id, :date_of_joining, :education, :comments, :work_phone, :role_id) }
      #devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :middle_name, :last_name, :email, :login_id, :password, :password_confirmation, :employee_id, :date_of_birth, :gender, :time_zone, :designation_id, :date_of_joining, :education, :comments, :work_phone) }
    end


end
