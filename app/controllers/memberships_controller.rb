class MembershipsController < ApplicationController
	def index
   id_user =  session[:user_id]
   id_membership = params[:id]
   
   if id_user == nil || id_membership == nil
     render "welcome/index"
   else
     user = User.find(id_user)
     @membership =  user.memberships.find(id_membership)
   end
		
	end
end