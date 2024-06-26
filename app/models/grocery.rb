class Grocery < ApplicationRecord
  has_many :baskets, dependent: :destroy
end
