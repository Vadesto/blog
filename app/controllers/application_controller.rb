class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception #hands off!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to posts_path, :alert => exception.message
  end

end
