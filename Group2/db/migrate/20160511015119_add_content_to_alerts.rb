class AddContentToAlerts < ActiveRecord::Migration
  def change
    add_column :alerts, :content, :text
  end
end
