class CreateOrders1 < ActiveRecord::Migration[5.1]
  def change
    create_table :orders1s do |t|
      t.integer :user_id
      t.integer :product_id
      t.float :total
    end
    add_index :orders1s, :user_id
    add_index :orders1s, :product_id
  end
end
