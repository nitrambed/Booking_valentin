class Booking < ApplicationRecord
  belongs_to :valentin
  belongs_to :user

  validates :reservation_at, presence: true

  has_many_attached :photo
end
