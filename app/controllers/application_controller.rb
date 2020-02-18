class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
	  stored_location_for(resource) || articles_path
	end

  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_in) do |user_params|
    user_params.permit(:username, :email)
  end

  
end

end