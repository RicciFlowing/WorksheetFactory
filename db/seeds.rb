require_relative 'seeder.rb'

integer = Proc.new { |min, max| rand(max-min)+min }

quads  = Proc.new do
  num = integer.call(3,20)
  {square: num*num, number: num}
end

Seeder.create_skill(name: 'Quadratwurzel berechnen',
templates:
[{template: "Berechne die Quadratwurzel von $\\sqrt[2]{ {{square}} }$ == {{number}}", values: quads}],
count: 10
)

Seeder.create_skill(name: 'Quadratzahlen berechnen',
  templates:
    [{template: "Berechne $ {{number}}^2 $ == {{square}}", values: quads}],
    count: 10
)

decimal = Proc.new { |min, max, digits| ((max-min)*rand+min).round(digits) }

decimal_sum = Proc.new do
  dec_1 = decimal.call(0,30,3)
  dec_2 = decimal.call(0,30,2)
  {dec_1: dec_1 , dec_2: dec_2, sum: (dec_1 + dec_2).round(2)}
end

Seeder.create_skill(name: 'Zwei Dezimalzahlen addieren',
  templates:
    [{template: "{{dec_1}} + {{dec_2}} == {{sum}}", values: decimal_sum}],
    count: 10
)

Seeder.create_skill(name: 'Zwei Dezimalzahlen subtrahieren',
  templates:
    [{template: "{{sum}} - {{dec_2}} == {{dec_1}}", values: decimal_sum}],
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


shapes      = Skill.create({name: 'Know the numbers of edges, corners and faces of common shapes and solids', questions: shapes_questions})
linear      = Skill.create({name: 'Solves simple text problems with linear functions', questions: linear_questions})

fac_1 = Factory.create({name: 'Shapes, solids and linear functions', skills:[shapes, linear]})


group_2 = Group.create({
  name: 'Shapes, solids and linear functions',
  description: 'Tests for the name of shapes and solids. In addition: Linear functions',
  grade: 6,
  year: '2015/16',
  factory: fac_1})
