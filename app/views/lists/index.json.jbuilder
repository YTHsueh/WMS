json.array!(@lists) do |list|
  json.extract! list, :id, :name, :serial
  json.url list_url(list, format: :json)
end
