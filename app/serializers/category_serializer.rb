class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :skills
  embed :id, include: true
end
