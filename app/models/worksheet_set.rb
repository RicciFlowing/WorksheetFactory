class WorksheetSet < ActiveRecord::Base
  belongs_to :factory
  belongs_to :group
  has_many   :worksheets
  has_many   :results, through: :worksheets

  validates :factory_id, presence: true
  validates :group_id, presence: true

  def get_questions
    self.factory.questions
  end
end
