class Skill < ActiveRecord::Base
  belongs_to :category
  has_many :questions
  has_many :factory_skill_associations
  has_many :factories, through: :factory_skill_associations

  def get_question
    #self.questions.first
    self.questions.offset(rand(self.questions.count)).first
  end
end
