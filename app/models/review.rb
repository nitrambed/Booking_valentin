class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (1..5)
  belongs_to :user
  belongs_to :valentin

  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
  validates :comment, presence: true, length: { minimum: 8 }
  validates :rating, presence: true, numericality: { only_integer: true }

  has_one_attached :photo
end
