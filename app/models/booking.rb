class Booking < ApplicationRecord
  belongs_to :valentin
  belongs_to :user

  validates :reservation_at, presence: true
end
