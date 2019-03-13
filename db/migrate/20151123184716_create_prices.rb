class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.belongs_to :store, index: true
      t.belongs_to :product, index: true
      t.decimal :price, precision: 9, scale: 3

      t.timestamps null: false
    end
  end
end
