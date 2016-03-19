class Question < ActiveRecord::Base
  belongs_to :skill
  has_many :results
  belongs_to :worksheets
end
