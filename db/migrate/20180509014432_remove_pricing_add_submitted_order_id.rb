class RemovePricingAddSubmittedOrderId < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :subtotal, :float
    remove_column :orders, :tax, :float
    remove_column :orders, :price, :float
    add_column :orders, :submitted_order_id, :integer
  end
end
