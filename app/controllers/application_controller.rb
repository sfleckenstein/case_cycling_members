class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  private
  def current_user
  	@current_user ||= Member.find(session[:member_id]) if session[:member_id]
  end
end
