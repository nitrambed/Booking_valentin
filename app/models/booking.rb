class Booking < ApplicationRecord
  belongs_to :valentin
  belongs_to :user

  validates :name, presence: true, length: { minimum: 8 }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :short_description, presence: true, length: { maximum: 500 }
  validates :long_description, presence: true, length: { maximum: 5000 }
end
