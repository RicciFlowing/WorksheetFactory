class Factory < ActiveRecord::Base
  has_many :factory_skill_associations
  belongs_to :collection
  has_many :worksheet_sets
  has_many :skills, through: :factory_skill_associations

  def questions
    skills = self.skills
    result = []
    skills.each do |skill|
      result << skill.get_question
    end
    result
  end
end
