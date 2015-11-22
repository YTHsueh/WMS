json.array!(@projects) do |project|
  json.extract! project, :id, :name, :serial, :status
  json.url project_url(project, format: :json)
end
