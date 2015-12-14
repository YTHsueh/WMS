json.array!(@procures) do |procure|
  json.extract! procure, :id, :serial, :date, :note
  json.url procure_url(procure, format: :json)
end
