module QuestionGenerator
  extend self
  def create(args)
    @values = args[:@values]
    p @values
    create_template(args[:template])
    create_questions(args[:count]||1)
  end

  private

  def create_template(str)
    @template = Template.new(str)
  end

  def render
    @template.render(@values.call)
  end

  def create_questions(count)
    questions = []
    count.times do
      questions.push(render)
    end
    p questions
    #::Question.create(questions)
  end
end

class Template
  def initialize(str)
    split_template(str)
  end

  def render(values)
    rendered_text      = insert_values(@text, values)
    rendered_solution  = insert_values(@solution, values)
    {text: rendered_text , solution: rendered_solution}
  end

  private
    def split_template(template_string)
       splitted_template = template_string.split('==')
       @text             = splitted_template.first
       @solution         = splitted_template.last
    end

    def insert_values(string, values)
      result = string
      values.each do |key, value|
        result = result.gsub(/{{\s*#{key}\s*}}/, value.to_s)
      end
      result
    end
end
