require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

	protect_from_forgery with: :exception
	helper_method :current_user


	protected

	# Configure permited fiels in rails
	before_filter :configure_devise_params, if: :devise_controller?
	def configure_devise_params
		devise_parameter_sanitizer.for(:sign_up) do |u|
			u.permit(:first_name,:last_name,:email,:password,:password_confirmation)
		end

		devise_parameter_sanitizer.for(:account_update) do |u|
			u.permit(:first_name,:last_name,:email,:password)
		end

		devise_parameter_sanitizer.for(:sign_in) do |u|
			u.permit(:email,:password,:password_confirmation)
		end

	end

	# Redirect after sign_in user
	def after_sign_in_path_for(resource)
		case resource
		when User
			then 
			projects_path 
		else 
			root_path
	end

end
