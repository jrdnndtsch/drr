class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def authorize_admin
  	if current_user.profile.present?
      redirect_to root_path, :status => 401 unless current_user.profile.role == 'admin'
      #redirects to previous page
    end  
  end

  def ensure_profile
    if current_user.present?
      if current_user.profile.blank?
        name = "trudy"
        redirect_to new_profile_path
        # raise 'hell'
      end
    end
  end
end
