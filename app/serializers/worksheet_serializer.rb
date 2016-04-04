class WorksheetSerializer < ActiveModel::Serializer
  attributes :id, :title, :archived
  has_many :questions, serializer: QuestionShortSerializer
#  has_many :results, serializer: ResultShortSerializer
end
