class Factory < ActiveRecord::Base
  has_many :factory_skill_associations
  has_many :skills, through: :factory_skill_associations
  has_many :worksheet_sets
  belongs_to :user

  validates :name, length: {minimum: 4}

  def questions
    skills = self.skills
    questions = skills.collect{ |skill| skill.get_question}
  end
end
