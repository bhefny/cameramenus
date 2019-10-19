class Software < ApplicationRecord


  # callbacks
  after_save :rebuild_menu

  #Associations
  belongs_to :variant
  has_many :menus, dependent: :destroy

  def rebuild_menu
    unless menu_markup.to_s.empty?
      markups = MarkupParser.parse(menu_markup)
      # return markups
      self.menus.delete_all
      levels = {}
      markups.each do |options|
        attributes = {software_id: self.id, level: options[:level], title: options[:title]}
        attributes.merge!(parent_id: levels[options[:level] - 1]) unless options[:level].zero?
        created_menu = Menu.create(attributes)
        levels[options[:level]] = created_menu.id
        options[:tags].each do |tag|

        end
      end
    end
  end

  private
end