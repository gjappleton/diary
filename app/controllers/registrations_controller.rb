class RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(resource)
    posts_path
  end

  def after_inactive_sign_up_path_for(resource)
    posts_path
  end

  def after_update_path_for(resource)
    posts_path
  end
  
end
