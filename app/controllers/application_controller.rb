class ApplicationController < ActionController::Base
   before_action :authenticate_user!, except: [:index] 
   before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	if current_user.has_role? :admin
      manages_path() # your path
    else
      entries_path()
    end  
  end


  protected

  def configure_permitted_parameters
    # Permit the `subscribe_newsletter` parameter along with the other
    # sign up parameters.
    devise_parameter_sanitizer.permit(:sign_up, keys: [:Dob, :Height, :Weight, :plan, :avatar, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:Dob, :Height, :Weight, :plan, :avatar, :name])

  end
end
