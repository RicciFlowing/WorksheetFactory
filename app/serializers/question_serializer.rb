class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :solution
  has_one :skill
  has_one :factory_skill_association
end
