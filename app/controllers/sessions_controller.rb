class SessionsController < ApplicationController
  
  
  def new
  end

  def create
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password].downcase)
      session[:user_id] = user.id
      @cuenta = 1
      redirect_to root_url, :notice => "Conectado"
    else
      flash.now.alert = "Nombre de usuario o contraseña invalido"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Desconectado"
  end
  private
 
end
