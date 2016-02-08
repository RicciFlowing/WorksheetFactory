class WorksheetSetSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :factory
  has_one :group
  has_many :worksheets
end
