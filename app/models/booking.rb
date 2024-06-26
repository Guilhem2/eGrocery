class Booking < ApplicationRecord
  belongs_to :checkout
  belongs_to :basket
end
