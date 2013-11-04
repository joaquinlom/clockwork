class AddMembershipToSchedule < ActiveRecord::Migration
  def change
    add_reference :schedules, :membership, index: true
  end
end
