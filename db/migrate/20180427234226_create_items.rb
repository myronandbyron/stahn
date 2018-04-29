class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_type
      t.float :price_per_item
      t.string :image

      t.timestamps
    end
  end
end
