require_relative 'seeder.rb'

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

random = Proc.new { |min, max| rand(max-min)+min }

quads  = Proc.new do
  num = random.call(3,20)
  {square: num*num, number: num}
end

Seeder.create_skill(name: 'Quadratwurzel berechnen',
templates:
[{template: "Berechne die Quadratwurzel von {{square}} == {{number}}", values: quads}],
count: 10
)

Seeder.create_skill(name: 'Quadratzahlen berechnen',
  templates:
    [{template: "Berechne {{square}}^2 == {{number}}", values: quads}],
    count: 10
)


shapes_questions = Question.create([
  {text:'How many edges does a parallelogram have?', solution: '4'},
  {text:'How many corners does a cube have?', solution: '8'},
  {text:'How many faces does a pyramid have?', solution: '4'},
  ])

linear_questions = Question.create([
  {text:'Two man need a hour to digg a hole. How long does the man need for two holes?', solution: '2h'},
  {text:'Two breads costs 3$. How much does 8 breads cost?', solution: '12$'},
  ])


add         = Skill.create({name: 'Add to numbers between 1 and 25', questions: add_questions})
subtract    = Skill.create({name: 'Subtract to numbers between 1 and 25', questions: subtract_questions})
shapes      = Skill.create({name: 'Know the numbers of edges, corners and faces of common shapes and solids', questions: shapes_questions})
linear      = Skill.create({name: 'Solves simple text problems with linear functions', questions: linear_questions})

fac_1 = Factory.create({name: 'Basic arithmetic', skills:[add, subtract]})
fac_2 = Factory.create({name: 'Shapes, solids and linear functions', skills:[shapes, linear]})

group_1 = Group.create({
  name: 'Basic arithmetic 1',
  description: 'Tests the basics of arithmetics. Addition and subtraction.',
  grade: 5,
  year: '2015/16',
  factory: fac_1})

group_2 = Group.create({
  name: 'Shapes, solids and linear functions',
  description: 'Tests for the name of shapes and solids. In addition: Linear functions',
  grade: 6,
  year: '2015/16',
  factory: fac_2})
