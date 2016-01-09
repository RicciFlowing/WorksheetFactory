class WorksheetQuestionsAssociation < ActiveRecord::Base
  belongs_to :worksheet
  belongs_to :question

#  validates :question_id, presence: true
#  validates :worksheet_id, presence: true
end
