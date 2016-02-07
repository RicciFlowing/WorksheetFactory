class Factory < ActiveRecord::Base
  has_many :factory_skill_associations
  has_many :worksheet_sets
  has_many :skills, through: :factory_skill_associations

  validates :name, length: {minimum: 4}

  def questions
    skills = self.skills
    result = []
    skills.each do |skill|
      result << skill.get_question
    end
    result
  end
end
