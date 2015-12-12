class Skill < ActiveRecord::Base
  belongs_to :category
  has_many :skills, through: :factory_skill_associations
end
