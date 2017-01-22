class Activity < ApplicationRecord
  has_many :albums, dependent: :destroy
  validates :name, :image_url, :details, presence: true
end
