class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name, nill: false
      t.integer :fee, nill: false, default: 0
      t.integer :time_required, null: false

      t.timestamps
    end
  end
end
