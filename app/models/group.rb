class Group < ActiveRecord::Base
  has_many :worksheets

  validates :name, length: {minimum: 4}
  validates :grade, numericality: {allow_blank: true}

  def get_questions
    self.factory.questions
  end
end
