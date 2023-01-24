module Parser
  class Letterboxd
    include SAXMachine
    include Feedjira::FeedUtilities

    element :title
    element :link, as: :url

    elements :item, as: :entries, class: LetterboxdEntry

    def self.able_to_parse?(xml)
      xml.include?("xmlns:dc=\"http://purl.org/dc/elements/1.1/\"")
    end
  end
end
