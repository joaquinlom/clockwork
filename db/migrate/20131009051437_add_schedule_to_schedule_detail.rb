class AddScheduleToScheduleDetail < ActiveRecord::Migration
  def change
    add_reference :schedule_details, :schedule, index: true
  end
end
