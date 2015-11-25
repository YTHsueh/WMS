json.array!(@materials) do |material|
  json.extract! material, :id, :cat1, :cat2, :cat3, :cat4, :num_sup, :serial, :name, :spec, :unit, :supplier, :replenish_policy, :replenish_period, :description, :weight, :weight_unit, :memo, :num_material_drawing, :min_stock, :pick_unit, :length, :width, :height, :lead_time
  json.url material_url(material, format: :json)
end
