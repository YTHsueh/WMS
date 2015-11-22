class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.string :name
      t.string :serial
      t.string :position

      t.timestamps null: false
    end
  end
end
