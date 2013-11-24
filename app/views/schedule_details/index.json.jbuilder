json.array!(@membership.schedule.schedule_details) do |schedule_det|
  json.extract! organization, :entry_time, :exit_time, :week_day, :latitude, :length, :schedule_id
end
