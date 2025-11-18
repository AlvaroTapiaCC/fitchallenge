class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Require authentication by default; public controllers will skip this
  before_action :authenticate_user!

  # Devise strong parameters for extra user fields
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Friendly message for authorization errors (when CanCanCan is active)
  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to root_path, alert: "You are not authorized to perform this action."
  end

  protected

  def configure_permitted_parameters
    added = %i[username first_name last_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: added)
    devise_parameter_sanitizer.permit(:account_update, keys: added)
  end
end
