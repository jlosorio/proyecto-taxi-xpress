class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :description, limit: 200
      t.decimal :amount, precision: 5, scale: 2

      t.timestamps null: false
    end
  end
end
