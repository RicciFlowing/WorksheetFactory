class Question < ActiveRecord::Base
  belongs_to :skill
  has_many :worksheet_questions_associations
  has_many :worksheets, through: :worksheet_questions_associations
end
