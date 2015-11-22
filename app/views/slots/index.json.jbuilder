json.array!(@slots) do |slot|
  json.extract! slot, :id, :name, :serial, :position
  json.url slot_url(slot, format: :json)
end
