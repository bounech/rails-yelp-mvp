class Review < ApplicationRecord
  belongs_to :restaurant

  rating_number = [0, 1, 2, 3, 4, 5]

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: rating_number }
  validates :rating, numericality: { only_integer: true }
end
