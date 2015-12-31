class Worksheet < ActiveRecord::Base
  belongs_to :group
  has_many :worksheet_questions_associations
  has_many :questions, through: :worksheet_questions_associations
end
