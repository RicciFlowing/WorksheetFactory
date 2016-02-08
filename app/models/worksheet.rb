class Worksheet < ActiveRecord::Base
  belongs_to :worksheet_set
  has_many :worksheet_questions_associations
  has_many :questions, through: :worksheet_questions_associations

  validates :worksheet_set_id, presence: true
  validates :title, presence: true

end
