class Subscription < ApplicationRecord
  validates_presences_of :title, :price, :status, :frequency

  status:["Active", "Inactive"]

  belongs_to :tea
  belongs_to :customer