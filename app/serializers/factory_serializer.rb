class FactorySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :skills
end
