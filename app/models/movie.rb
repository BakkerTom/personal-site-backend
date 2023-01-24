class Movie < ApplicationRecord
  after_create :track_activity

  has_one :activity, as: :content

  def self.update_from_letterboxd
    xml = HTTParty.get('https://letterboxd.com/bakkertom/rss/').body
    feed = Feedjira.parse xml, parser: Parser::Letterboxd
     
    add_entries feed.entries
  end

  def track_activity
    Activity.create! content: self, created_at: created_at
  end

  private
  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? letterboxd_id: entry.entry_id 
        create!(
          letterboxd_id: entry.entry_id,
          title: entry.film_title,
          film_year: entry.film_year,
          link: entry.url,
          poster: entry.poster,
          watched_date: entry.watched_date,
          created_at: entry.published
        ) 
      end
    end
  end
end
