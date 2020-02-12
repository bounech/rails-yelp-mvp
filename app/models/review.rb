class Review < ApplicationRecord
  belongs_to :restaurant

  STARS = [0, 1, 2, 3, 4, 5]

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: STARS }
  validates :rating, numericality: { only_integer: true }
end
