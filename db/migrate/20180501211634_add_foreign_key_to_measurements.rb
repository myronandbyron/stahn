class AddForeignKeyToMeasurements < ActiveRecord::Migration[5.1]
  def change
    add_column :measurements, :buyer_id, :integer
  end
end
