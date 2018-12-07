module UsersHelper
  def require_same_user_users
    if current_user != @user and !current_user.admin?
      flash[:danger] = 'You can edit or delete only your own account!'
      redirect_to home_path
    end
  end

  def require_admin
    if logged_in? and !current_user.admin?
      flash[:danger] = 'Only admin users can perform that action'
      redirect_to users_path
    end
  end
end
