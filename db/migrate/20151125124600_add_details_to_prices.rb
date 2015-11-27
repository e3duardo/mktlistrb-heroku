class AddDetailsToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :price, :decimal
  end
end
