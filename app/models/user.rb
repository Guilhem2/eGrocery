class User < ApplicationRecord
  has_many :checkouts, dependent: :destroy
end
