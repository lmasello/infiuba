class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :details
  has_many :albums
end
