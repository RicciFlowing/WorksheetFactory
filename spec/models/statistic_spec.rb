require 'rails_helper'

RSpec.describe Statistic, type: :model do
  let(:result_1) {double('result', {question: 'Frage1', negative: 1, positive: 1})  }
  let(:result_2) {double('result', {question: 'Frage1', negative: 2, positive: 0})  }
  let(:result_3) {double('result', {question: 'Frage2', negative: 2, positive: 0})  }
  let(:results)do
    [result_1, result_2, result_3]
  end

  describe "questions" do
    it 'elimantes doubled questions' do
      stat = Statistic.new(results: results)
      expect(stat.questions).to include(result_1.question)
      expect(stat.questions.count).to eq 2
    end
  end
end
