class Travel < ApplicationRecord
  after_create :track_activity

  def track_activity
    Activity.create content: self
  end
end
