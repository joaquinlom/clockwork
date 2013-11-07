class OrganizationsController < ApplicationController
  
  def index
    
    id_user =  session[:user_id]
    
    @user = User.find(id_user)
    
  end
  
end