class Artist < ApplicationRecord
  has_many :records, dependent: :destroy
  has_many :artist_tags, dependent: :destroy
  has_many :tags, through: :artist_tags

  validates :name, :image_url, presence: true, uniqueness: true
end
