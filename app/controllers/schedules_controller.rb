class SchedulesController < ApplicationController
  
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  
  def index
    id_user =  session[:user_id]
    id_membership = params[:id]
    @membership =  Membership.find(id_membership)
	end
  
  def show
  end
  
  def new
    
    id_membership = params[:id_mem]
    
    @membership =  Membership.find(id_membership)
    @schedule = @membership.schedules.new
  end
  
  def create
    id_membership = params[:id_mem]
    
    membership =  Membership.find(id_membership)
    @schedule = membership.schedules.new()
    @schedule.job = params[:job]
    if @schedule.save
      redirect_to add_sc_detail_path(@schedule)
    else
      render :action => "new"
    end
  end
  
  def edit
  end
  
  def update
    if @schedule.update_attributes(shcedule_params)
      flash[:notice] = 'Cambios Guardados Correctamente'
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @schedule.destroy
    redirect_to :action => 'index'
  end
  
  private
  
  def set_schedule
    id_user =  session[:user_id]
    id_membership = params[:id]
    
    user = User.find(id_user)
    membership =  user.memberships.find(id_membership)
    @schedule = membership.schedules.find(params[:id])
  end
  
  
end
