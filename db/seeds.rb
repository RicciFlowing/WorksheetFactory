require_relative 'seeder.rb'

integer = Proc.new { |min, max| rand(max-min)+min }

## L1 Zahl

## L2 Messen
rect = Proc.new do
  a = integer.call(3,20)
  b = integer.call(3,20)
  {a: a, b: b, area: a*b, umfang: 2*a+2*b}
end

Seeder.create_skill(name: 'Flächeninhalt eines Rechtecks berechnen',
templates:
[{template: "Berechne den Flächeninhalt eines Rechtecks mit den Seitenlängen a={{a}}cm  b={{b}}cm== {{number}}", values: rect}],
count: 10
)

winkel = Proc.new do
  stunden = integer.call(1,11)
  minuten = integer.call(0,59)
  {stunden: stunden, minuten: minuten, winkel: (stunden.to_f/12*36).round}
end

Seeder.create_skill(name: 'Winkel schätzen',
templates:
[{template: "Eine Uhr zeigt {{stunden}}:00.Schätze den Winkel zwischen den Zeigern == {{winkel}}", values: winkel}],
count: 10
)

einheiten = Proc.new do
  zahl = integer.call(1,100)
  {zahl: zahl, hundert: zahl*100, tausend: zahl*1000}
end

Seeder.create_skill(name: 'Längeneinheiten umwandlen',
templates:
[
  {template: "Wandle um {{tausend}}mm = ?m == {{zahl}} m", values: einheiten},
  {template: "Wandle um {{tausend}}m = ?km == {{zahl}} km", values: einheiten},
  {template: "Wandle um {{hundert}}cm = ?m == {{zahl}} m", values: einheiten},
  {template: "Wandle um {{zahl}}m = ?mm == {{tausend}} mm", values: einheiten},
  {template: "Wandle um {{zahl}}km = ?m == {{tausend}} m", values: einheiten},
  {template: "Wandle um {{zahl}}m = ?cm == {{hundert}} cm", values: einheiten},
],
count: 20
)

## L3 Raum und Form



## L4 Funktionaler Zusammenhang

## L5 Daten und Zufall

quads  = Proc.new do
  num = integer.call(3,20)
  {square: num*num, number: num}
end

Seeder.create_skill(name: 'Quadratwurzel berechnen',
templates:
[{template: "Berechne $\\sqrt[2]{ {{square}} }$ == {{number}}", values: quads}],
count: 10
)

Seeder.create_skill(name: 'Quadratzahlen berechnen',
  templates:
    [{template: "Berechne $ {{number}}^2 $ == {{square}}", values: quads}],
    count: 10
)

quadratic_equ  = Proc.new do
  solution = integer.call(3,20)
  num = integer.call(3,20)
  {solution: solution, num_1: num, num_2: solution*solution + num}
end

quadratic_equ_2  = Proc.new do
  solution = integer.call(3,10)
  num = integer.call(2,5)
  {solution: solution, num_1: num, num_2: solution*solution * num}
end

Seeder.create_skill(name: 'Einfache quadratische Gleichungen lösen',
  templates:
    [{template: "Gib beide Lösungen von  $ x^2 - {{num_1}} = {{num_2}} $ an == +{{solution}}/-{{solution}} ", values: quadratic_equ},
    {template: "Gib beide Lösungen von $ {{num_1}} x^2 = {{num_2}} $ an == +{{solution}}/-{{solution}}", values: quadratic_equ_2}],
    count: 10
)

decimal = Proc.new { |min, max, digits| ((max-min)*rand+min).round(digits) }

decimal_sum = Proc.new do
  dec_1 = decimal.call(0,1,3)
  dec_2 = decimal.call(0,10,2)
  {dec_1: dec_1 , dec_2: dec_2, sum: (dec_1 + dec_2).round(3)}
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

decimal_product = Proc.new do
  dec_1 = decimal.call(0,5,1)
  dec_2 = decimal.call(0,1,2)
  {dec_1: dec_1 , dec_2: dec_2, product: (dec_1 * dec_2).round(2)}
end

Seeder.create_skill(name: 'Zwei Dezimalzahlen addieren',
  templates:
    [{template: "{{dec_1}} * {{dec_2}} == {{product}}", values: decimal_product}],
    count: 10
)

shapes = Proc.new do
  [
    {shape: 'Würfel', faces: 6, corners: 8, edges: 12 },
    {shape: 'Quader', faces: 6, corners: 8, edges: 12 },
    {shape: 'Pyramide', faces: 5, corners: 5, edges: 8 },
    {shape: 'Dreiseitiges Prisma', faces: 5, corners: 6, edges: 9 },
  ].sample
end

form = Seeder.create_skill(name: 'Die Form der wichtiges Figuren kennen',
  templates:
    [
      {template: "Wie viele Ecken hat ein/eine {{shape}} == {{corners}}", values: shapes},
      {template: "Wie viele Kanten hat ein/eine {{shape}} == {{edges}}", values: shapes},
      {template: "Wie viele Flächen hat ein/eine {{shape}} == {{faces}}", values: shapes},
    ],
    count: 10
)

dummy_group = Group.create(grade: 7, name:'a', year: '2015/2016')
fac_1 = Factory.create(name: 'First Factory', skills: [form])
set = WorksheetSet.create(title: 'First WorksheetSet', factory_id: fac_1.id, group_id: dummy_group.id)

Worksheet.create(title: 'Test Worksheet', worksheet_set_id: set.id, archived: true)
