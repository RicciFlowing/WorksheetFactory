class Worksheet < ActiveRecord::Base
  belongs_to :factory
  belongs_to :collection
  has_many :worksheet_questions_associations
  has_many :questions, through: :worksheet_questions_associations
end
