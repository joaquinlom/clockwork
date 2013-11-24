json.array!(@membership.schedules) do |schedule|
  json.extract! schedule, :job,:membership_id
end
