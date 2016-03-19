class Statistic < ActiveRecord::Base
  belongs_to :group
  has_many :results, through: :group

  def positives
    sum = 0
    self.results.each do |result|
      if(result.positive)
        sum += result.positive
      end
    end
    sum
  end
end
