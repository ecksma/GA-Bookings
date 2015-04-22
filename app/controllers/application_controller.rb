class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_default_search


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :full_name, :dob, :role, :gender, :image, cohort_ids: [])
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
     u.permit(:name, :email, :password, :password_confirmation, :current_password, :full_name, :dob, :role, :gender, :image, cohort_ids: [])
    end
  end

  def set_default_search
    @q = User.ransack(params[:q])
    @search_field = :full_name_cont
  end

end

