class Site < ActiveRecord::Base
  belongs_to :account
  attr_accessible :address_1, :address_2, :city, :contact_name, :email, :postcode, :site_name, :telephone

  validates :postcode, :postcode => true
end
