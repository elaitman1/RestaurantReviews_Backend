class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :stars, :recommend

  belongs_to :user
  belongs_to :restaurant
end
