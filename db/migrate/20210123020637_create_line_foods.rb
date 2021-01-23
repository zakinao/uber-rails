class CreateLineFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :line_foods do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :count, null: false, default: 0
      t.boolean :active, null: false, fefault: false

      t.timestamps
    end
  end
end
