class Review < ApplicationRecord
  RATE = (0..5)
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: RATE }, numericality: { only_integer: true }
end
