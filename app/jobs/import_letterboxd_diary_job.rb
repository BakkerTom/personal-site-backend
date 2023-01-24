require 'rss'

class ImportLetterboxdDiaryJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    feed = RSS::Parser.parse 'https://letterboxd.com/bakkertom/rss/'
    puts feed
  end
end
