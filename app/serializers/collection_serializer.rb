class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade
  has_many :factories
  has_many :worksheets
end
