class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :occasion, :price_limit
  has_many :users
end
