class FactorySkillAssociation < ActiveRecord::Base
  belongs_to :factory
  belongs_to :skill
end
