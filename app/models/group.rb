class Group < ActiveRecord::Base
  has_many :worksheet_sets

  validates :grade, numericality: {allow_blank: true}

end
