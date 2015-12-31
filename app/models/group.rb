class Group < ActiveRecord::Base
  belongs_to :factory
  has_many :worksheets

  def get_questions
    self.factory.questions
  end
end
