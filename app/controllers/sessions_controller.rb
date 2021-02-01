class SessionsController < ApplicationController
  def new
  end

  def create
    @usuario = Usuario.find_by(email: params[:email])
    puts "Email: "
    puts (params[:email])
    if @usuario && @usuario.authenticate(params[:password])
      session[:usuario_id] = @usuario.id
      redirect_to @usuario
    else
      redirect_to login_path
    end
  end
end
