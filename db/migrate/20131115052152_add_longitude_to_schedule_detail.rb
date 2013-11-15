class AddLongitudeToScheduleDetail < ActiveRecord::Migration
  def change
    add_column :schedule_details, :longitude, :float
  end
end
