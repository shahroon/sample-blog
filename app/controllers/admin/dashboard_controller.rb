class Admin::DashboardController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :check_admin, only: %i[ index ]

  def index
    @users = User.first(10)
    @total_posts = Post.count
  end

  ## This action should be maintained in a separate controller with all other User related tasks, however for now keeping it in here
  def make_admin_user
    @user = User.find(params[:id])
    @user.update_attribute(:admin, true)
    redirect_back(fallback_location: "/", notice: "#{@user.name} has been promoted to Admin.")
  end

  private

  def check_admin
    if !current_user.admin?
      redirect_back(fallback_location: "/", notice: "You are not Admin, logout and login again as an Admin.")
    end
  end
end
