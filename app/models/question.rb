class Question < ActiveRecord::Base
  belongs_to :skill
  has_many :results
  has_many :worksheets, through: :results
end
