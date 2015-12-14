require 'rails_helper'

RSpec.describe Skill, type: :model do
  describe 'get_question' do
    it 'returns one question' do
      question = Question.create()
      question2 = Question.create()
      skill    = Skill.new()
      skill.questions = [question, question2]
      skill.save
      expect(skill.get_question).to eq question
    end
  end
end
