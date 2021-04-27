class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :tax
      t.float :total
      t.datetime :date
      t.timestamps
    end
  end
end
