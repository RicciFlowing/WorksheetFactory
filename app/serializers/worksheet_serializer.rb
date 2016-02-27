class WorksheetSerializer < ActiveModel::Serializer
  attributes :id, :title, :archived
  has_many :questions
  has_many :results, serializer: ResultShortSerializer
end
