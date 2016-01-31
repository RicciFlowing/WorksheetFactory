module Seeder
  extend self
  def create_skill(args)
    @name      = args[:name]
    @questions = QuestionGenerator.create(templates: args[:templates], count: args[:count])
    data =  {name: @name, questions: @questions}
    puts 'Skill created'
    puts data
    # ::Skill.create(data)
  end

end

module QuestionGenerator
  extend self
  def create(args)
    create_templates(args[:templates])
    create_questions(args[:count]||1)
  end

  private
    def create_templates(templates)
      @templates = []
      templates.each do |template|
        @templates << Template.new(template: template[:template], values: template[:values])
      end
    end

    def render_template
      @templates.sample.render
      #::Question.create(questions)
    end

    def create_questions(count)
      questions = []
      count.times do
        questions.push(render_template)
      end
      puts 'Questions created'
      puts questions
      questions
      #::Question.create(questions)
    end
end

class Template
  def initialize(args)
    split_template(args[:template])
    @values_object = args[:values]
  end

  def render
    set_values_hash
    rendered_text      = insert_values(@text, @values)
    rendered_solution  = insert_values(@solution, @values)
    {text: rendered_text , solution: rendered_solution}
  end

  private
    def split_template(template_string)
       splitted_template = template_string.split('==')
       @text             = splitted_template.first
       @solution         = splitted_template.last
    end

    def set_values_hash
      @values = @values_object.call
    end

    def insert_values(string, values)
      result = string
      values.each do |key, value|
        result = result.gsub(/{{\s*#{key}\s*}}/, value.to_s)
      end
      result
    end
end

random = Proc.new { |min, max| rand(max-min)+min }

quads  = Proc.new do
  num = random.call(3,20)
  {square: num*num, number: num}
end

template = "Berechne die Quadratwurzel von {{square}} == {{number}}"
Seeder.create_skill(name: 'Quadratwurzel berechnen', templates: [{template: template, values: quads}], count: 10)
