class ScheduleDetailsController < ApplicationController
  
  def new
    id_schedule = params[:id]
    schedule = Schedule.find(id_schedule)
    @schedule_det = schedule.schedule_details.new
  end
  
  def create
    id_schedule = params[:id_schedule]
    sc = ScheduleDetail.new
    sc.entry_time = params[:entry_time]
    sc.exit_time = params[:exit_time]
    sc.week_day = params[:week_day]
    sc.length = Float(params[:length])
    sc.latitude = Float(params[:latitude])
    sc.longitude = Float(params[:longitude])
    sc.schedule_id = params[:id_schedule]
    if sc.save
       redirect_to  "/schedules/#{id_schedule}"
    else
      render :action => 'new'
    end
  end
  
  def sdetail_params
    params.
      require(:schedule_det).
      permit(:entry_time, 
      :exit_time, 
      :week_day,
      :length,
      :latitude,
      :longitude,
      :id_schedule)
  end
end
