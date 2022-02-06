class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(user)
    '/dashboard' # Or :prefix_to_your_route
  end

  def after_sign_in_path_for(user)
    dashboard_path
  end
end