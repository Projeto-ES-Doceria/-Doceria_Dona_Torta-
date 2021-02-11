class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user

  def current_user
    if session[:usuario_id]
      @usuario_logado = Usuario.find(session[:usuario_id])
    end
  end

  def logged_in?
    current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end
end
