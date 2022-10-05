class AdminController < ApplicationController
  before_action :require_login, only: :index
  layout "admin"
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def index; end

  def user_not_authorized
    flash[:alert] = t(".alert")
    redirect_back(fallback_location: root_path)
  end
end
