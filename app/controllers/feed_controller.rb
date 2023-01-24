class FeedController < ApplicationController

  def index
    @activities = Activity.includes(:content).order(created_at: :desc).all
  end

end

