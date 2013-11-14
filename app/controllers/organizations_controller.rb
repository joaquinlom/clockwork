class OrganizationsController < ApplicationController
  
  def index 
    id_user =  session[:user_id]
    @user = User.find(id_user)
  end
  
  def new
    @organization = Organization.new
  end
  
  def edit
    id = params[:id]
    @organization = Organization.find(id);
  end
  
  def update
    @organization = Organization.find(params[:id])
    if @organization.update_attributes(organization_params)
      flash[:notice] = 'Cambios Guardados Correctamente'
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
  
  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      #crear Membership con usuario
      
      membership = User.find(session[:user_id]).memberships.new
      membership.organization = @organization
      membership.rol = Rol.find(1) #Administrador
      membership.save
      
      flash[:notice] = "Organización Guardada Correctamente"
      redirect_to organizations_path
    else
      render :action => 'new'
    end
  end
  
  def destroy
    Organization.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
  
  def organization_params
    params.require(:organization).permit(:name, :description)
  end
end