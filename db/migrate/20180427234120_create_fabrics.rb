class CreateFabrics < ActiveRecord::Migration[5.1]
  def change
    create_table :fabrics do |t|
      t.string :name
      t.text :fabric_type
      t.float :price_per_yard
      t.string :image
      t.boolean :availability

      t.timestamps
    end
  end
end
