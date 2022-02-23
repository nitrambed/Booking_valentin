class Valentin < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, length: { minimum: 8 }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :short_description, presence: true, length: { maximum: 500 }
  validates :long_description, presence: true, length: { maximum: 5000 }

  has_one_attached :photo
end
