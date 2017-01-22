class Event < ApplicationRecord
  validates :date, :url, :name, :image_url, :details, presence: true
end
