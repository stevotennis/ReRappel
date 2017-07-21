class CreateOrders2 < ActiveRecord::Migration[5.1]
  def change
    create_table :orders2s do |t|
      t.integer :user_id
      t.integer :product_id
      t.float :total
    end
    add_index :orders2s, :user_id
    add_index :orders2s, :product_id
  end
end
