class ChangeOrderModelName < ActiveRecord::Migration[5.1]
  def change
    rename_table :orders, :shopping_cart
  end
end
