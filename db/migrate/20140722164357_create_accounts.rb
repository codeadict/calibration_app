class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :acc_no
      t.string :customer_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :postcode
      t.string :contact_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
