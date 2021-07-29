class Tweet < ApplicationRecord
  has_one_attached :image
  # validates :text, presence: true
  belongs_to :user
end
