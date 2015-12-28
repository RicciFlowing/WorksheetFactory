class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :grade
  has_one :factory
  has_many :worksheets
end
