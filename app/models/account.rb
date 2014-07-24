class Account < ActiveRecord::Base
  attr_accessible :acc_no, :address_1, :address_2, :city, :contact_name, :customer_name, :email, :phone, :postcode

  validates :postcode, :postcode => true
end
