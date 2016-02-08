class WorksheetSet < ActiveRecord::Base
  belongs_to :factory
  belongs_to :group

  def get_questions
    self.factory.questions
  end
end
