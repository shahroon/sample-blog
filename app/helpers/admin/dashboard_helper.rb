module Admin::DashboardHelper
  def make_admin user
    unless user.admin?
      link_to "Make Admin", admin_make_admin_user_path(user), method: :put
    end
  end
end
