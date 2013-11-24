class MembershipsController < ApplicationController
  
	def index
    id_user =  session[:user_id]
    id_membership = params[:id]
   
    if id_user == nil || id_membership == nil
      render "welcome/index"
    else
      user = User.find(id_user)
      @membership =  user.memberships.find(id_membership)
      @memberships = Membership.where("organization_id = ? ",@membership.organization.id )
      @users = User.all()
      @roles = Rol.all()
    end
	end
  
  def destroy
    mem = Membership.find(params[:id])
    id_organizacion = mem.organization.id
    mem.destroy
    
    id_user =  session[:user_id]
    usuario = User.find(id_user)
    membership_user = usuario.memberships.find_by_organization_id(id_organizacion)
    redirect_to  "/memberships/#{membership_user.id}"
  end
  
  def create
    id_role = params[:role_id]
    id_organization = params[:organization_id]
    id_user = params[:user_id]
    
    user = User.find(id_user)
    rol = Rol.find(id_role)
    organization = Organization.find(id_organization)
    
    membership = user.memberships.new()
    membership.rol = rol
    membership.organization = organization
    
    membership.save
    
    id_user =  session[:user_id]
    usuario = User.find(id_user)
    membership_user = usuario.memberships.find_by_organization_id(id_organization)
    redirect_to  "/memberships/#{membership_user.id}"
  end
  
  def author_params
    params.require(:memebership).permit(:organization_id, :role_id, :user_id)
  end
  
end