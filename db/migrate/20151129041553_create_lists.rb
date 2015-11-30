class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.belongs_to :store, index: true

      t.timestamps null: false
    end
  end
end
