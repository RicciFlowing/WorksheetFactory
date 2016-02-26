class Worksheet < ActiveRecord::Base
  belongs_to :worksheet_set
  has_many :results
  has_many :questions, through: :results

  validates :worksheet_set_id, presence: true
  validates :title, presence: true

end
