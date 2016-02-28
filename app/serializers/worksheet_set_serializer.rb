class WorksheetSetSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :worksheets
  has_many :results
end
