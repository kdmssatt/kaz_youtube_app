class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  # ユーザーのログインを確認する
  def logged_in_user
    if not logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
