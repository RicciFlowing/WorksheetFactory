class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :worksheets, :name, :grade
  has_one :factory
end
