class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new bookmark_params
    @bookmark.save
  end

  private
  def bookmark_params
    params.permit(:title, :link)
  end
end
