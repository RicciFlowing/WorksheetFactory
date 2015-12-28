class WorksheetSerializer < ActiveModel::Serializer
  attributes :id, :title
  #has_one :factory
  has_many :questions
  #embed :ids, embed_in_root: true
end
