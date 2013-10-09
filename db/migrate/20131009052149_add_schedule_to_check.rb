class AddScheduleToCheck < ActiveRecord::Migration
  def change
    add_reference :checks, :schedule, index: true
  end
end
