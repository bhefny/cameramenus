class Menu < ApplicationRecord
  has_ancestry
  acts_as_taggable_on :tags
  belongs_to :software
end