class Testimonial < ApplicationRecord
  validates :name, :city, :image_url, :message, presence: true
end
