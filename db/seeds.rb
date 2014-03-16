# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

f1 = Fuel.create \
  name: "RP-1",
  caveats: "supply constraints, petroleum residue",
  formula: "C12H26"

f2 = Fuel.create \
  name: "LOX",
  caveats: "reacts violently with organic material, prone to detonate",
  formula: "O2"

f3 = Fuel.create \
  name: "RJ-5",
  caveats: "",
  formula: ""

r1 = Rocket.create \
  title: "Atlas V",
  thrusters: 2,
  speed: 2700,
  decommissioned: false,
  fuels: [f1, f2]
