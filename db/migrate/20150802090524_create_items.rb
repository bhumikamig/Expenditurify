class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :color
      t.timestamps null: false
    end
    add_index :items, :name
  end
end
