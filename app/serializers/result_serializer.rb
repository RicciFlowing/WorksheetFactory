class ResultSerializer < ActiveModel::Serializer
  attributes :id, :positive, :negative
  has_one :group
  has_one :question
  has_one :worksheet
end
