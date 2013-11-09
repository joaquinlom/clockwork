class SchedulesController < ApplicationController
   
	def index
    id_user =  session[:user_id]
    id_membership = params[:id]
    
    user = User.find(id_user)
    @membership =  user.memberships.find(id_membership)
	end
  
  def new
    user = User.find(id_user)
  end
  
  def author_params
    params.require(:schedule).permit(:job, :membership_id)
  end
  
end
