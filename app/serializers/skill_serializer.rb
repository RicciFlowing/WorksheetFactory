class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :questions, serializer: QuestionShortSerializer
end
