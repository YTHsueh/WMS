class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :serial
      t.date :date
      t.string :operator
      t.text :note

      t.timestamps null: false
    end
  end
end
