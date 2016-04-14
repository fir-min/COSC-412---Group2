class CreateUserTypeRoles < ActiveRecord::Migration
  def change
    create_table :user_type_roles do |t|
      t.references :user_type, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
