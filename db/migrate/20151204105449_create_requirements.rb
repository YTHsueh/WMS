class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :material
      t.integer :quantity
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
