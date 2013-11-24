json.array!(@memberships) do |membership|
  json.extract! membership, :user_id, :organization_id, :rol_id
end
