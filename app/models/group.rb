class Group < ActiveRecord::Base
  has_many :worksheet_sets
  has_many :results, through: :worksheet_sets

  validates :grade, numericality: {allow_blank: true}

end
