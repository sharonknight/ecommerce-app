class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def authenticate_admin!
    if !(user_signed_in? && current_user.admin)
      flash[:warning] = "Please don't do that, wonderful person!"
      redirect_to "/"
    end
  end
end