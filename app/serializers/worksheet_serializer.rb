class WorksheetSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :factory
end
