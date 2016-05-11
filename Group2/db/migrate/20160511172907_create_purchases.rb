class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.float :total

      t.timestamps null: false
    end
  end
end
