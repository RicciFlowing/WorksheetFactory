require_relative 'question_generator'

class SectorSeed
  def initialize(args)
    @title   = args[:title]
    @grade  = args[:grade]
    @skills = []
  end

  def create
    ::Sector.create(title: @title, grade: @grade, skills: @skills)
  end

  def skill(title, &block)
    skill_seed = ::SkillSeed.new(title: title)
    skill_seed.instance_eval(&block)
    @skills.push(skill_seed.create)
  end
end

class SkillSeed
  def initialize(args)
    @title   = args[:title]
  end

  def params(&block)
    @parameter_block = block
  end

  def count(c)
    @count = c
  end


  def question(str)
    QuestionGenerator.create(template: str, values: @parameter_block, count: @count)
  end

  def create
    puts self
  end
end


def sector(title, grade, &block)
  sector_seed = SectorSeed.new(title: title, grade: grade)
  sector_seed.instance_eval(&block)
  # sector_seed.create
end


sector 'name', '5/6' do
  skill 'Addieren von Zahlen' do
    params do
      a = rand(2)
      b = 2
      {zahl_1: a, zahl_2: b, summe: a+b}
    end
   count 10
   question 'Wieviel ist {{zahl_1}} + {{zahl_2}} == {{summe}}'
   question 'Wieviel ist {{zahl_2}} - {{zahl_2}} == {{summe}}'
  end
end
