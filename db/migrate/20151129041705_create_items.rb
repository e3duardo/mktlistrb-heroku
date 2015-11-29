class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :list, index: true, foreign_key: true
      t.string :product
      t.decimal :price, precision: 5, scale: 3

      t.timestamps null: false
    end
  end
end
