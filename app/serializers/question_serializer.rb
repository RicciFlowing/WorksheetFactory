class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :solution
end
