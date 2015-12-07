class CreateSerials < ActiveRecord::Migration
  def change
    create_table :serials do |t|
      t.integer :project_id
      t.integer :material_id
      t.string :serial
      t.string :status

      t.timestamps null: false
    end
  end
end
