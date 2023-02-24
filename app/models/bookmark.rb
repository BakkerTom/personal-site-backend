class Bookmark < ApplicationRecord
  after_create :track_activity

  has_one :activity, as: :content, dependent: :destroy

  def track_activity
    Activity.create content: self
  end

  def domain
    URI(link).host
  end
end
