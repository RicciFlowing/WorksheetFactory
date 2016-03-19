class Group < ActiveRecord::Base
  has_many :worksheet_sets
  has_many :statistics
  has_many :results, through: :worksheet_sets
  belongs_to :user
  validates :grade, numericality: {allow_blank: true}

end
