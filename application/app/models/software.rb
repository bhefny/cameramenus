class Software < ApplicationRecord
  include MenuParser


  # callbacks
  after_save :rebuild_menu

  #Associations
  belongs_to :variant
  has_many :menus, dependent: :destroy

  private

  def rebuild_menu
    self.menus.delete_all
    self.parse_create
  end
end