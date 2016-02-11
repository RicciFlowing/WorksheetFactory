require_relative 'seeder.rb'

integer = Proc.new { |min, max| rand(max-min)+min }

load "seed_dir/l1.rb"

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

Seeder.create_skill(name: 'Volumeneinheiten umwandlen',
templates:
[
  {template: "Wandle um {{tausend}}ml = ?l == {{zahl}} l", values: einheiten},
  {template: "Wandle um {{zahl}}$dm^3$ = ?l == {{zahl}} l", values: einheiten},
  {template: "Wandle um {{zahl}}$m^3$ = ?l == {{tausend}} l", values: einheiten},
],
count: 20
)

## L3 Raum und Form

## L4 Funktionaler Zusammenhang

## L5 Daten und Zufall


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
fac_1 = Factory.create(name: 'First Factory')
fac_1.skills.push(form)
fac_1.save
set = WorksheetSet.create(title: 'First WorksheetSet', factory_id: fac_1.id, group_id: dummy_group.id)

Worksheet.create(title: 'Test Worksheet', worksheet_set_id: set.id, archived: true)
