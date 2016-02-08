class WorksheetSet < ActiveRecord::Base
  belongs_to :factory
  belongs_to :group
  has_many   :worksheets

  def get_questions
    self.factory.questions
  end
end
