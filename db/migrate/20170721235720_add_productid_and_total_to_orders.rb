class AddProductidAndTotalToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :product_id, :integer
    add_index :orders, :product_id
    add_column :orders, :total, :float
  end
end
