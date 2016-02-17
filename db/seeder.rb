require_relative 'question_generator'

class SectorSeed
  def initialize(args)
    @title   = args[:title]
    @grade  = args[:grade]
    @skills = []
  end

  def create
    sector  = ::Sector.create(title: @title, grade: @grade)
    sector.skills << @skills
    sector.save
  end

  def skill(title, &block)
    skill_seed = ::SkillSeed.new(title: title, params: @params)
    skill_seed.instance_exec(&block)
    @skills.push(skill_seed.create)
  end

  def params(&block)
    @params = block
  end
end

class SkillSeed
  def initialize(args)
    @title    = args[:title]
    @parameter_block = args[:params] || Proc.new {}
    @questions = []
    @count = 20
  end

  def params(&block)
    @parameter_block = block
  end

  def count(c)
    @count = c
  end


  def question(str)
    @questions.push QuestionGenerator.create(template: str, values: @parameter_block, count: @count)
  end

  def create
    skill  = ::Skill.create(name: @title )
    skill.questions << @questions
    skill.save
    skill
  end
end


def sector(title, grade, &block)
    p "Begin seeding sector: #{title}, grade: #{grade} "
    sector_seed = SectorSeed.new(title: title, grade: grade)
    sector_seed.instance_eval(&block)
    sector_seed.create
end
