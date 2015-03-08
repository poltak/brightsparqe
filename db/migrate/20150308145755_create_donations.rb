class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :suburb
      t.string :state
      t.string :country
      t.string :postcode
      t.string :message

      t.timestamps null: false
    end
  end
end
