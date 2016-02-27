class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text, :solution
  has_many :results, serializer: ResultShortSerializer
end
