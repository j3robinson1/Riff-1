class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    # dont know how to relocate just yet
    # render :template => "remote_content/devise_success_sign_in.js.erb"
  end
end
