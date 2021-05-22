class ApplicationController < ActionController::Base
  include Pundit
  include Pagy::Backend
  include PublicActivity::StoreController

  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :user_activity

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protected

    def configure_permitted_parameters
      attributes = [:role_ids]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: attributes)

    end

    rescue_from Pundit::NotAuthorizedError do |exception|
      redirect_to new_user_session_path, alert: exception.message
    end

  private

    def user_activity
      current_user.try :touch
    end

end
