json.array!(@resources) do |resource|
  json.extract! resource, :id, :identifier, :identifierType, :user_id, :local_id
  json.url resource_url(resource, format: :json)
end
