class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :devise_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

protected
  def devise_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(
        :first_name,
        :last_name,
        :username,
        :email,
        :password,
        :password_confirmation,
        :user_type
      )
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(
        :first_name,
        :last_name,
        :username,
        :email,
        :password,
        :password_confirmation,
        :current_password,
        :user_type
      )
    end
  end
end
