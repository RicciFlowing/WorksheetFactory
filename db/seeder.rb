module Seeder
  extend self
  def create_skill(args)
    name      = args[:name]
    template  = args[:template]
    values    = args[:values]
    questions = ::Question.create(question_data(template, values))
    ::Skill.create(name: name, questions: questions)
  end

  private
    def question_data(template, values)
      data = []
      values.each do |value|
        data << template.render(value)
      end
      data
    end
end

class Template
  def initialize(args)
    @text = args[:text] || ''
    @solution = args[:solution] || ''
  end

  def render(vars)
    rendered_text       = insert_vars(@text, vars)
    rendered_solution  = insert_vars(@solution, vars)
    {text: rendered_text ,solution: rendered_solution}
  end

  private
    def insert_vars(string, vars)
      result = string
      vars.each do |key, value|
        result = result.gsub(/{{\s*#{key}\s*}}/, value.to_s)
      end
      result
    end
end
