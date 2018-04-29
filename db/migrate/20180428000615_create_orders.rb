class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :tax
      t.float :price
      t.binary :status

      t.timestamps
    end
  end
end
