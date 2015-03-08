class AddAmountToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :amount, :string
  end
end
