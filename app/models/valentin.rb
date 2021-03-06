class Valentin < ApplicationRecord
  geocoded_by :adress
  after_validation :geocode

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, length: { minimum: 4 }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :short_description, presence: true, length: { maximum: 500 }
  validates :long_description, presence: true, length: { maximum: 5000 }

  has_one_attached :photo
  has_one_attached :marker_photo


  include PgSearch::Model

  pg_search_scope :search_by_name_and_description,

    against: [ :name, :short_description ],
    using: {
      tsearch: { prefix: true }
    }

  def moyenne
    if self.reviews.any?
      self.reviews.average(:rating).round(2)
    else
      "No rating yet"
    end
  end

end
