module Seeder
  extend self

  def set_sector(sector)
    @sector = sector
  end

  def reset_sector
    @sector = false
  end

  def create_skill(args)
    @name      = args[:name]
    @questions = QuestionGenerator.create(templates: args[:templates], count: args[:count])
    data =  {name: @name, questions: @questions}
    skill = ::Skill.create(data)
    if @sector
      @sector.skills.push(skill)
      @sector.save
    end
    skill
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
    end

    def create_questions(count)
      questions = []
      count.times do
        questions.push(render_template)
      end
      ::Question.create(questions)
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
