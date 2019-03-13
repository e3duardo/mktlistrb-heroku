class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :list, index: true, foreign_key: true
      t.string :product
      t.decimal :price, precision: 9, scale: 3
      t.decimal :amount, precision: 9, scale: 3
      t.decimal :total, precision: 9, scale: 3

      t.timestamps null: false
    end
  end
end
