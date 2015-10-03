class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.integer :user_id
      t.integer :dni
      t.string :license, limit: 10
      t.string :car_plate, limit: 7
      t.string :car_type, limit: 10
      t.string :car_brand, limit: 20
      t.string :car_model, limit: 20
      t.string :car_color, limit: 20
      t.string :state, limit: 10

      t.timestamps null: false
    end
  end
end
