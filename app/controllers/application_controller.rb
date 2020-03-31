class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:name,
                         :email,
                         :password,
                         :password_confirmation,
                         company_attributes: [:id, :name]
                         )
    end
  end

  def current_company
    return nil unless user_signed_in?
    @current_company ||= current_user.company
  end

  helper_method :company

end
