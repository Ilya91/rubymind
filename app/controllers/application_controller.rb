class ApplicationController < ActionController::Base
  include ApplicationHelper
  include UsersHelper
  # helper_method :current_user, :logged_in?
end
