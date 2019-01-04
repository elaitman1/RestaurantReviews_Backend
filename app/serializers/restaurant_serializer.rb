class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :food_type, :bar, :location, :image

  has_many :reviews
  has_many :users
end
