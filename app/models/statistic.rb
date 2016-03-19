class Statistic < ActiveRecord::Base
  belongs_to :group
  has_many :results, through: :group
end
