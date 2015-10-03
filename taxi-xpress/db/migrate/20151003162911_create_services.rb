class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :user_id
      t.string :description_route, limit: 200
      t.string :type, limit: 1
      t.integer :number_of_passengers
      t.string :car_type, limit: 10
      t.string :payment_type, limit: 10
      t.datetime :demand_date
      t.decimal :amount, precision: 8, scale: 2
      t.integer :driver_id
      t.string :state, limit: 10

      t.timestamps null: false
    end
  end
end
