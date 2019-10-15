class Software < ApplicationRecord


  # callbacks
  after_save :rebuild_menu

  #Associations
  belongs_to :variant
  has_many :menus, dependent: :destroy

  private

  def rebuild_menu
    unless menu_markup.empty?
      markups = MarkupParser.parse(menu_markup)
      self.menus.delete_all
      menu_parent = nil
      markups.each do |options|
        options.merge!(software_id: self.id)
        if options[:level].zero?
          menu_parent = Menu.create(options)
        else
          options.merge!(parent_menu_id: menu_parent.try(:id))
          Menu.create(options)
        end
      end
    end
  end
end