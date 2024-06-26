class Basket < ApplicationRecord
  belongs_to :grocery
  has_many :bookings, dependent: :destroy
  validates :price, comparison: { greater_than: 0 }
end
