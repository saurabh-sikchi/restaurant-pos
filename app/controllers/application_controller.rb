class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_logged_in

  def ensure_logged_in
  	unless session[:logged_in]
  		redirect_to root_path
  	end
  end

end
