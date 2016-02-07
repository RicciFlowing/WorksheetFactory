class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :grade, :year
  #has_many :worksheet_sets
end
