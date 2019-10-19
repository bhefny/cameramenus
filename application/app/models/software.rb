class Software < ApplicationRecord


  # callbacks
  after_save :rebuild_menu

  #Associations
  belongs_to :variant
  has_many :menus, dependent: :destroy

  def rebuild_menu
    unless menu_markup.to_s.empty?
      markups = MarkupParser.parse(menu_markup)
      self.menus.delete_all
      levels = {}
      markups.each do |options|
        options.merge!(software_id: self.id)
        options.merge!(parent_id: levels[options[:level] - 1]) unless options[:level].zero?
        levels[options[:level]] = Menu.create(options).id
      end
    end
  end

  private
end