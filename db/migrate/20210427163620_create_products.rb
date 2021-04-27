class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :model
      t.string :image
      t.float :price
      t.string :company
      t.string :collection
      t.string :info
      t.boolean :inCart 
      t.integer :count
      t.float :total
      t.timestamps
    end
  end
end
