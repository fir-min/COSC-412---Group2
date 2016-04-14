class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.float :price
      t.integer :item_number

      t.timestamps null: false
    end
  end
end
