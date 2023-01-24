module Parser
  class LetterboxdEntry
    include SAXMachine
    include Feedjira::FeedEntryUtilities
    include Feedjira::RSSEntryUtilities

    
    element 'letterboxd:filmTitle', as: :film_title
    element 'letterboxd:filmYear', as: :film_year
    element 'letterboxd:watchedDate', as: :watched_date

    def poster
      doc = Nokogiri::HTML(summary)
      doc.css('img').first['src']
    end
  end
end
