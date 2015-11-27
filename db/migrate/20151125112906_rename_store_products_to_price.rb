class RenameStoreProductsToPrice < ActiveRecord::Migration
  def change
    rename_table :store_products, :prices
  end
end
