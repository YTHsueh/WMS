class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :cat1
      t.string :cat2
      t.string :cat3
      t.string :cat4
      t.string :num_sup
      t.string :serial
      t.string :name
      t.string :spec
      t.string :unit
      t.string :supplier
      t.string :replenish_policy
      t.string :replenish_period
      t.text :description
      t.float :weight
      t.string :weight_unit
      t.text :memo
      t.string :num_material_drawing
      t.string :min_stock
      t.string :pick_unit
      t.float :length
      t.float :width
      t.float :height
      t.string :lead_time

      t.timestamps null: false
    end
  end
end
