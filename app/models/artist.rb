class Artist < ApplicationRecord
  has_many :records, dependent: :destroy

  validates :name, :image_url, presence: true, uniqueness: true
end
