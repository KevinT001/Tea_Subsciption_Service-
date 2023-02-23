class Subscription < ApplicationRecord
  validates_presence_of :title, :price, :frequency
  validates_presence_of :status, inclusion: ["Active", "Inactive"]

  belongs_to :tea
  belongs_to :customer 
end 