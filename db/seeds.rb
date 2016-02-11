require_relative 'seeder.rb'

integer = Proc.new { |min, max| rand(max-min)+min }

require_relative "seed_dir/l1.rb"
require_relative "seed_dir/5_6.rb"


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
