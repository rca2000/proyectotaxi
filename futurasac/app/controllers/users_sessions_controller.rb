class UsersSessionsController < ApplicationController
  layout 'plantilla'
  def new
      @usuario = Usuario.new
  end
  def create
      if @usuario = login(params[:username],params[:password])
          redirect_back_or_to(reservation_path, message: "Bienvenido a Futura Taxi")
      else
          flash.now[:alert] = "Error al ingresar el usuario / contraseña"
          render action: :new
      end
  end
  def destroy
      logout
      redirect_to(:usuarios, message: "Gracias por su visita")
  end

end