class CreateInProcures < ActiveRecord::Migration
  def change
    create_table :in_procures do |t|
      t.string :procure
      t.date :date_procure
      t.text :note

      t.timestamps null: false
    end
  end
end
