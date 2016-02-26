class Result < ActiveRecord::Base
  belongs_to :worksheet
  belongs_to :question
end
