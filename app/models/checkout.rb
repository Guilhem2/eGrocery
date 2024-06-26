class Checkout < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :delivery_date, comparison: { greater_than: Date.current }
end
