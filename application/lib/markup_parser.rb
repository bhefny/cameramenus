class MarkupParser
  class << self
    def parse(menu_markup)
      markups = parse_to_array(cleanup(menu_markup))
      convert_to_menu(markups)
    end

    private

    def cleanup(menu_markup)
      menu_markup.gsub(/\r/, '')
    end

    def parse_to_array(menu_markup)
      menu_markup.split("\n").map(&:strip)
    end

    def convert_to_menu(markups)
      markups.map do |s|
        {
          level: extract_level(s),
          title: extract_title(s),
          tags: extract_tags(s),
        }
      end

    end

    def extract_level(s)
      s.scan(/^\-*/).join.scan(/-/).size
    end

    def extract_title(s)
      s.gsub!(/^[\- ]*/, '\2')
      s.gsub(/(.*)\[(.*)\]/, '\1').strip
    end

    def extract_tags(s)
      s.match(/\[(.*)\]/).try(:[], 1).to_s.split(',').map(&:strip)
    end
  end
end