class Brand < ApplicationRecord
  has_many :variants, dependent: :destroy
end