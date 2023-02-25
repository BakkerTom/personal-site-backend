class Photo < ApplicationRecord
  after_create :track_activity
  has_one :activity, as: :content, dependent: :destroy

  has_one_attached :file
  validate :check_file_presence

  def track_activity
    Activity.create! content: self, created_at: created_at
  end

  private
  def check_file_presence
    errors.add(:file, "No file attached") unless file.attached?
  end 
end
