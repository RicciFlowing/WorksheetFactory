# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


add_questions = Question.create([
  {text:'2+3', solution: '5'},
  {text:'4+13', solution: '17'},
  {text:'7+24', solution: '21'},
  {text:'3+19', solution: '22'},
   ])

subtract_questions = Question.create([
 {text:'3-1', solution: '4'},
 {text:'13-4', solution: '9'},
 {text:'25-24', solution: '1'},
 {text:'23-9', solution: '14'},
  ])

shapes_questions = Question.create([
  {text:'How many edges does a parallelogram have?', solution: '4'},
  {text:'How many corners does a cube have?', solution: '8'},
  {text:'How many faces does a pyramid have?', solution: '4'},
  ])

linear_questions = Question.create([
  {text:'Two man need a hour to digg a hole. How long does the man need for two holes?', solution: '2h'},
  {text:'Two breads costs 3$. How much does 8 breads cost?', solution: '12$'},
  ])


add    = Skill.create({name: 'Add to numbers between 1 and 25', questions: add_questions})
subtract    = Skill.create({name: 'Subtract to numbers between 1 and 25', questions: subtract_questions})
shapes = Skill.create({name: 'Know the numbers of edges, corners and faces of common shapes and solids', questions: shapes_questions})
linear = Skill.create({name: 'Solves simple text problems with linear functions', questions: linear_questions})

fac_1 = Factory.create({name: 'Basic arithmetic', skills:[add, subtract]})
fac_2 = Factory.create({name: 'Shapes, solids and linear functions', skills:[shapes, linear]})

group_1 = Group.create({name: 'Basic arithmetic 1', factory: fac_1})
group_2 = Group.create({name: 'Shapes, solids and linear functions', factory: fac_2})
