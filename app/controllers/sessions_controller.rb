class SessionsController < ApplicationController
  def new
  end

  def create
    @usuario_logar = Usuario.find_by(email: params[:email])
    if @usuario_logar && @usuario_logar.authenticate(params[:password])
      session[:usuario_id] = @usuario_logar.id
      redirect_to @usuario_logar
    else
      redirect_to login_path
    end
  end

  def destroy
    sessions[:user_id] = nil
    redirect_to login_path
  end
end
