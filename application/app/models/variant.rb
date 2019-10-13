class Variant < ApplicationRecord
  belongs_to :brand
  has_many :softwares, dependent: :destroy
end