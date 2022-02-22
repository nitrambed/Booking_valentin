class Review < ApplicationRecord
  belongs_to :user
  belongs_to :valentin

  validates :comment, presence: true, length: { minimum: 8 }
  validates :rating, presence: true, numericality: { only_integer: true }
end
