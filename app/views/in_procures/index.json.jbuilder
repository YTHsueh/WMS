json.array!(@in_procures) do |in_procure|
  json.extract! in_procure, :id, :procure, :date_procure, :note
  json.url in_procure_url(in_procure, format: :json)
end
