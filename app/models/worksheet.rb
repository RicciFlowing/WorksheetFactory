class Worksheet < ActiveRecord::Base
  belongs_to :group
  has_many :worksheet_questions_associations
  has_many :questions, through: :worksheet_questions_associations

  validates :group_id, presence: true
  validates :title, presence: true

end
