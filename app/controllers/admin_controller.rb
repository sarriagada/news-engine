class AdminController < ApplicationController
  before_action :require_login, only: :index
  layout "admin"

  def index; end
end
