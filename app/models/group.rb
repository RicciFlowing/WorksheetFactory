class Group < ActiveRecord::Base
  belongs_to :factory
  has_many :worksheets

  validates :factory_id, presence: true
  validates :name, length: {minimum: 4}
  validates :grade, numericality: {allow_blank: true}

  def get_questions
    self.factory.questions
  end
end
