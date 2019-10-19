class Menu < ApplicationRecord
  has_ancestry

  belongs_to :software
end