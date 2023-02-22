class Customer < ApplicationRecord
  validates_presences_of :first_name, :last_name, :email, :address
  validates_uniqueness_of :email
  has_many :subscriptions
  
end