json.array!(@users) do |user|
  json.extract! user, :id, :email, :encrypted_password, :user_type_id
  json.url user_url(user, format: :json)
end
