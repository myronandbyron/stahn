class CreateSubmittedOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :submitted_orders do |t|
      t.integer :buyer_id
      t.float :subtotal
      t.float :tax
      t.float :total

      t.timestamps
    end
  end
end
