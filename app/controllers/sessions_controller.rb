class SessionsController < ApplicationController
  def new
  end

  def create
    @usuario = Usuario.find_by(email: params[:email])
    if @usuario && @usuario.authenticate(params[:password])
      session[:usuario_id] = @usuario.id
      redirect_to @usuario
    else
      redirect_to login_path
    end
  end

  def destroy
    sessions[:user_id] = nil
    redirect_to login_path
  end
end
