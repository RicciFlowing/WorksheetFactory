# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([
  {name: 'geometry'},
  {name: 'arithmetics'},
  {name: 'functions'},
  ])

  add_questions = Question.create([{text:'2+3', solution: '5'}, {text:'4+13', solution: '17'}])
  shapes_questions = [Question.create({text:'How many edges does a paralleogram have?', solution: '4'})]
  linear_questions = [Question.create({text:'Two man need a hour to digg a hole. How long does four man need?', solution: '30min'})]


add    = Skill.create({name: 'Add to numbers', questions: add_questions})
shapes = Skill.create({name: 'Know the most common shapes', questions: shapes_questions})
linear = Skill.create({name: 'Uses linear functions', questions: linear_questions})


fac_1 = Factory.create({name: 'first_factory', skills:[add, shapes, linear] })

col_1 = Collection.create({name:'A collection to start with', factory: fac_1})
