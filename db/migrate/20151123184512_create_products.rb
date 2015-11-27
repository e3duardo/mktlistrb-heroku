class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :alias
      t.decimal :price, precision: 5, scale: 3
      t.decimal :amount, precision: 5, scale: 3
      t.boolean :active

      t.timestamps null: false
    end
  end
end
