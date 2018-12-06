module ApplicationHelper
  def current_class?(test_path)
    return 'active' if request.path == test_path
  end

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "img-circle gravatar")
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = 'You must be logged in to perform that action!'
      redirect_to home_path
    end
  end

  def require_same_user
    if current_user != @article.user
      flash[:danger] = 'You can edit or delete only your own articles!'
      redirect_to home_path
    end
  end
end