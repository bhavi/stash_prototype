json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :institution_id, :provider, :uid, :external_id, :oauth_token
  json.url user_url(user, format: :json)
end
