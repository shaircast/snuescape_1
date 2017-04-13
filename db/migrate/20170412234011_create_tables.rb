class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      
      t.integer "date"
      t.integer "time"
      t.boolean "booked"
      t.string "name"

      t.timestamps null: false
    end
  end
end
