class ScheduleDetailsController < ApplicationController
  
  def new
    id_user =  session[:user_id]
    id_membership = params[:id]
    
    user = User.find(id_user)
    membership =  user.memberships.find()
    schedule = membership.schedules.find()
    @schedule_det = schedule.schedule_details.new
  end
  
  def create
    @schedule_det = schedule.schedule_details.new(sdetail_params)
    if @schedule_det.save
      redirect_to schedules_path
    else
      render :action => 'new'
    end
  end
  
  def sdetail_params
    params.require(:schedule_detail).permit(:entry_time, :exit_time, :week_day, :latitude, :length, :schedule_id)
  end
end
