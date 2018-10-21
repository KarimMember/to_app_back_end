class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.string :added_
      t.datetime :date
      t.datetime :due_date
      t.boolean :completed
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
