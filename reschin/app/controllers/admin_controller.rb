class AdminController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_admin!

  def dashboard
  end

  private

  def authenticate_admin!
    return redirect_to new_user_session_path unless current_user
    sign_out(current_user) && (redirect_to new_user_session_path) unless current_user.has_role? :admin
  end
end
