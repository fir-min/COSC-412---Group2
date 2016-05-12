class AddMessageToAccessAudits < ActiveRecord::Migration
  def change
    add_column :access_audits, :message, :text
  end
end
