class SchedulesController < ApplicationController
  
	def index
    id_user =  session[:user_id]
    id_membership = params[:id]
    
    user = User.find(id_user)
    @membership =  user.memberships.find(id_membership)
	end
  
  def new
    id_user =  session[:user_id]
    id_membership = params[:id]
    
    user = User.find(id_user)
    membership =  user.memberships.find(id_membership)
    @schedule = membership.schedules.new
  end
  
  def create
    @schedule = membership.schedules.new(schedule_params)    
    if @schedule.save
      redirect_to new_schedule_detail_path
    else
      render :action => "new"
    end
  end

  def schedule_params
    params.require(:schedule).permit(:job, :membership_id)
  end
  
end
