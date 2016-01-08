class FactorySkillAssociation < ActiveRecord::Base
  belongs_to :factory
  belongs_to :skill

  validates :factory_id, presence: true
  validates :skill_id, presence: true
end
