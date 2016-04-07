class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :stock

      t.timestamps null: false
    end
  end
end
