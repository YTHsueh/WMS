class CreateProcures < ActiveRecord::Migration
  def change
    create_table :procures do |t|
      t.string :serial
      t.date :date
      t.text :note

      t.timestamps null: false
    end
  end
end
