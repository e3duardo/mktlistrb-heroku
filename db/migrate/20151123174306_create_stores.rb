class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
