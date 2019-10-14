module MenuParser
  extend ActiveSupport::Concern

  def parse_create
    cleanup = menu_cleanup(menu_markup)
    parsed = menu_parse_to_array(cleanup)
    x = menu_convert_entry(parsed)

    pr x.inspect
  end

  private

  def menu_cleanup(menu_markup)
    menu_markup.gsub!(/\r/, '')
  end

  def menu_parse_to_array(menu_markup)
    menu_markup.split("\n").map(&:strip)
  end

  def menu_convert_entry(menu_markup)
    menu_markup.map do |s|
    end
  end
end