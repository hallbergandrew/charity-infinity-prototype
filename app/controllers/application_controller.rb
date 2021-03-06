class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_action :authenticate_user!

  def after_sign_in_path_for(user)
    root_path(user)
  end

  def after_sign_out_path_for(user)
    root_path
  end
end
