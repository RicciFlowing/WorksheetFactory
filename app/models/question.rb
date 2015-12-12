class Question < ActiveRecord::Base
  belongs_to :skill
  belongs_to :factory_skill_association
end
