class CreateBuys < ActiveRecord::Migration
  def change
    create_table :buys do |t|
      t.integer :project_id
      t.integer :procure_id

      t.timestamps null: false
    end
  end
end
