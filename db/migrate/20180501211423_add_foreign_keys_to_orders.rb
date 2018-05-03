class AddForeignKeysToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :buyer_id, :integer
    add_column :orders, :fabric_id, :integer
    add_column :orders, :measurement_id, :integer
    add_column :orders, :item_id, :integer
  end
end
