class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :item_id
      t.float :price
      t.text :description
      t.datetime :purchase_date

      t.timestamps null: false
    end
    add_index :expenses, :user_id
    add_index :expenses, :item_id
  end
end
