class Group < ActiveRecord::Base
  has_many :worksheets_sets

  validates :grade, numericality: {allow_blank: true}

end
