class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(users)
    home_path
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:account, :password, :remember_me) }
  # end
end
