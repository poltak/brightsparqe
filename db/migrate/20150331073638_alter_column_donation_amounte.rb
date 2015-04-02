class AlterColumnDonationAmounte < ActiveRecord::Migration
  def change
  	change_column :donations, :amount, 'float USING CAST(amount AS float)'
  end
end
