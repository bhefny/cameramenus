class Menu < ApplicationRecord
  belongs_to :software
  belongs_to :parent_menu, :class_name => "Menu", :foreign_key => "parent_menu_id", optional: true
  has_many :menus, dependent: :destroy
end