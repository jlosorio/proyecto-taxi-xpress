class CreateFavoriteRoutes < ActiveRecord::Migration
  def change
    create_table :favorite_routes do |t|
      t.integer :user_id
      t.string :name, limit: 80
      t.integer :route_id

      t.timestamps null: false
    end
  end
end
