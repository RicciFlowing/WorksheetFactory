class SectorSerializer < ActiveModel::Serializer
  attributes :id, :title, :grade
  has_many :skills
end
