class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio

  has_many :restaurants
  has_many :reviews
end
