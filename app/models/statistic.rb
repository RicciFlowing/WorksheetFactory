class Statistic < ActiveRecord::Base
  belongs_to :group
  has_many :results, through: :group

  def over_all_positives
    self.results {|result| result.positive}
  end
end
