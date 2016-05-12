class CreateAccessAudits < ActiveRecord::Migration
  def change
    create_table :access_audits do |t|
      t.text :email
      t.boolean :access


      t.timestamps null: false
    end
  end
end
