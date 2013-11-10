module ApplicationHelper
  def is_administrator?(id_organization)
    user_session = User.find(session[:user_id])
    membership = user_session.memberships.find_by_organization_id(id_organization)
    return membership.rol == Rol.find(1) #Administrador  
  end
  
  def get_user
    @user_session = User.find(session[:user_id])
  end
  
end
