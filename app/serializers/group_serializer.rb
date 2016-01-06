class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :grade, :year
  has_one :factory
  has_many :worksheets
end
