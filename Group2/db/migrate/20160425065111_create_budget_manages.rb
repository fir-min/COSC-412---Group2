class CreateBudgetManages < ActiveRecord::Migration
  def change
    create_table :budget_manages do |t|
      t.string :department
      t.integer :deptno
      t.integer :amount

      t.timestamps null: false
    end
  end
end
