class AddItemNumberToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :item_number, :integer
  end
end
