class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :imageurl, :description, :create_at
  has_one :user
end
