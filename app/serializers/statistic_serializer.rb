class StatisticSerializer < ActiveModel::Serializer
  attributes :id, :over_all_positives
  has_one :group
end
