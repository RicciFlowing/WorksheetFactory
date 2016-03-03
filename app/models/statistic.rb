module StatisticFactory
  extend self

  def build(args)
    @results  = args[:results]
    Statistic.new(total_correct: self.total_correct, total_errors: self.total_errors)
  end

  private

  def total_correct
    @results.inject {|sum, result| sum + result.positive}
  end

  def total_errors
    @results.inject {|sum, result| sum + result.negative}
  end

  # def top_questions(count)
  #   sorted = questions_with_results.sort_by{|quest| quest[:positive]-quest[:negative]}
  #   sorted.first(count)
  # end
  #
  # def questions
  #   @questions = @questions || @results.map {|result| result.question}.uniq
  # end
  #
  # def questions_with_results
  #   unless @questions_with_results
  #     @questions_with_results = []
  #     questions.each do |question|
  #       pos = question.results.inject(0){|sum, result| sum+result.positive.to_i}
  #       neg = question.results.inject(0){|sum, result| sum+result.negative.to_i}
  #       @questions_with_results.push({text: question.text, solution: question.solution, negative: neg, positive: pos})
  #     end
  #   end
  #   @questions_with_results
  # end

end

class Statistic
  include ActiveAttr::Attributes
  attribute :total_correct
  attribute :total_errors
end
