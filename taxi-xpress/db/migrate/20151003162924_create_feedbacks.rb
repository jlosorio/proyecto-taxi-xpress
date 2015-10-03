class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :service_id
      t.integer :score
      t.string :comment, limit: 20

      t.timestamps null: false
    end
  end
end
