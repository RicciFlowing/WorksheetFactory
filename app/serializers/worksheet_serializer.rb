class WorksheetSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :factory
  has_many :questions
end
