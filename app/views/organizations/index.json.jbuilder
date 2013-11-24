json.array!(@user.organizations) do |organization|
  json.extract! organization, :name, :description
end