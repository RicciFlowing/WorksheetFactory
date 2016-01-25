class WorksheetSerializer < ActiveModel::Serializer
  attributes :id, :title, :archived
  has_many :questions
end
