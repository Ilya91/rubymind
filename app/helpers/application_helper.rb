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
end
