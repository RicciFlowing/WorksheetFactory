class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :factory
  has_many :worksheets
end
