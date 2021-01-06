class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    redirect_to '/login' unless session[:name]
  end

  def current_user
    session[:name] ||= nil
  end

  private

  def require_login
    redirect_to '/login' unless current_user
  end
end
