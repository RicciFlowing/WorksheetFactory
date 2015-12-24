class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :category
  has_many :questions
end
