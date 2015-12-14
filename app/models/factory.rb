class Factory < ActiveRecord::Base
  has_many :factory_skill_associations
  has_many :skills, through: :factory_skill_associations

  def questions
    skills = self.skills.to_a
    skills.each do |skill|
      questions << skill.get_question
    end
    questions
  end
end
