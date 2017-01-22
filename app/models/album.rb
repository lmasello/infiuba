class Album < ApplicationRecord
  belongs_to :activity
  validates :activity, :name, :url, presence: true
end
