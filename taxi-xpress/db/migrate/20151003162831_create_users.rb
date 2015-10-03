class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :names, limit: 80
      t.string :surnames, limit: 80
      t.integer :phone_number
      t.string :email, limit: 100
      t.string :password, limit: 12
      t.string :type_user, limit: 1

      t.timestamps null: false
    end
  end
end
