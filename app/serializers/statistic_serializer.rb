class StatisticSerializer < ActiveModel::Serializer
  attributes :id
  has_one :group
end
