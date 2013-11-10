class OrganizationsController < ApplicationController
  
  def index 
    id_user =  session[:user_id]
    @user = User.find(id_user)
  end
  
  def new
    @organization = Organization.new
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
  
  def organization_params
    params.require(:organization).permit(:name, :description)
  end
end