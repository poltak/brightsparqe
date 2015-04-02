class ChangeAmoutTypeToFloat < ActiveRecord::Migration
  def change
  	change_column :donations, :amount, :float
  end
end
