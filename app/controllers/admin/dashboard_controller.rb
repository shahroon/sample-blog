class Admin::DashboardController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :check_admin, only: %i[ index ]

  def index
    @users = User.first(10)
  end

  private

  def check_admin
    if !current_user.admin?
      redirect_back(fallback_location: "/", notice: "You are not Admin, logout and login again as an Admin.")
    end
  end
end
