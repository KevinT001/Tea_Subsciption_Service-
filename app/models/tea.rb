Class Tea < ApplicationRecord

validates_presences_of :title, :description, :temperature, :brew_time

has_many :subscriptions
has_many :customers, through: :subscriptions