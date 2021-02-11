class UsuariosController < ApplicationController

  before_action :authenticate_user!
  before_action :find_usuario, only: [:show, :edit, :update, :delete]

  def index
    @usuario = Usuario.all
  end

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.create(strong_params_usuarios)
    if @usuario.save
      redirect_to usuarios_index_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @usuario.update(strong_params_usuarios)
      redirect_to usuarios_index_path
    else
      render 'edit'
    end
  end

  def delete
    @usuario.destroy
    redirect_to usuarios_index_path
  end

  private

  def find_usuario
    @usuario = Usuario.find(params[:id])
  end

  def strong_params_usuarios
    params.require(:usuario).permit(:tipo, :nombre, :apellidos, :pais, :email, :contraseña)
  end

end
