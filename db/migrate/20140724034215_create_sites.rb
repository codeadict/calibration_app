class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.references :account
      t.string :site_name, :limit => 150
      t.string :address_1
      t.string :address_2
      t.string :city, :limit => 50
      t.string :postcode, :limit => 15
      t.string :contact_name, :limit => 100
      t.string :telephone, :limit => 20
      t.string :email

      t.timestamps
    end
    add_index :sites, :account_id
    add_index :sites, :site_name, :unique => true
    add_index :sites, :city, :unique => true
    add_index :sites, :postcode, :unique => true
    add_index :sites, :contact_name, :unique => true
    add_index :sites, :email
  end
end
