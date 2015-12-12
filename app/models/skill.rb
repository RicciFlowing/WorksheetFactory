class Skill < ActiveRecord::Base
  belongs_to :category
  has_many :factory_skill_associations
  has_many :factories, through: :factory_skill_associations
end
