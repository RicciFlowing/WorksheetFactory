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

add    = Skill.create({name: 'Add to numbers'})
shapes = Skill.create({name: 'Know the most common shapes'})
linear = Skill.create({name: 'Uses linear functions'})


fac_1 = Factory.create({name: 'first_factory'})
fac_1.skills = [add, shapes, linear]
