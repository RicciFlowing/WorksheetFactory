class Factory < ActiveRecord::Base
  has_many :skills, through: :factory_skill_associations
end
