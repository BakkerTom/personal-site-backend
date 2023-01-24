class Activity < ApplicationRecord
  belongs_to :content, polymorphic: true
end
