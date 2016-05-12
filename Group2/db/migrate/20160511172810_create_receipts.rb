class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :purchase_id
      t.integer :product_id
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
