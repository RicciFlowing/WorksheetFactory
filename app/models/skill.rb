class Skill < ActiveRecord::Base
  belongs_to :sector
  has_many :questions
  has_many :results, through: :questions
  has_many :factory_skill_associations
  has_many :factories, through: :factory_skill_associations

  validates :name, uniqueness: true

  def get_question
    question = self.questions.offset(rand(self.questions.count)).first
    result = question.dup
    result.skill = self
    result
  end
end
