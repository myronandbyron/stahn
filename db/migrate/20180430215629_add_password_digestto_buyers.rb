class AddPasswordDigesttoBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :password_digest, :string
  end
end
