json.array!(@feeds) do |feed|
  json.extract! feed, :id, :serial, :date, :operator, :note
  json.url feed_url(feed, format: :json)
end
