class Result < ActiveRecord::Base
  belongs_to :group
  belongs_to :question
end
