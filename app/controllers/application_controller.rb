class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_inactive_sign_up_path_for(users)
    posts_path
  end
end
