class CreateScheduleDetails < ActiveRecord::Migration
  def change
    create_table :schedule_details do |t|
      t.time :entry_time
      t.time :exit_time
      t.string :week_day
      t.float :latitude
      t.float :length

      t.timestamps
    end
  end
end
