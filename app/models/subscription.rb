class Subscription < ApplicationRecord
  validates_presence_of :title, :price, :frequency
  validates_presence_of :status, inclusion: ["Active", "Inactive"]

  belongs_to :tea
  belongs_to :customer 
  enum :frequency { bi_weekly: 0, monthly: 1, bi_monthly: 2 }
end 