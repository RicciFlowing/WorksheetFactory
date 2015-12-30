class WorksheetSetSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :factory
end
