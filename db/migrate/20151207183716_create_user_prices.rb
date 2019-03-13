class CreateUserPrices < ActiveRecord::Migration
  def change
    create_table :user_prices do |t|
      t.references :product, index: true, foreign_key: true
      t.string :product_name
      t.string :product_alias
      t.decimal :price

      t.timestamps null: false
    end
  end
end
