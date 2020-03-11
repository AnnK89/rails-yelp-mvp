class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :content, :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: { in: RATINGS }
  belongs_to :restaurant
end
