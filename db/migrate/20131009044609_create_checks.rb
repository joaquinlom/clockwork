class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.time :check_in
      t.time :check_out
      t.string :week_day

      t.timestamps
    end
  end
end
