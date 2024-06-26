class Basket < ApplicationRecord
  belongs_to :grocery
  has_many :bookings
  validates :price, (comparison { greater_than 0 })
end
