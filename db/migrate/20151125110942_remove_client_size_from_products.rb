class RemoveClientSizeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :price, :string
    remove_column :products, :amount, :string
    remove_column :products, :active, :string
  end
end
