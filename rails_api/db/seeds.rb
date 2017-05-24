# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

40.times do
  Coffee.create(
  blend_name: "#{Faker::Coffee.blend_name}",
  origin: "#{Faker::Coffee.origin}",
  variety: "#{Faker::Coffee.variety}",
  notes: "#{Faker::Coffee.notes}"
  )
end

# Faker::Coffee.blend_name #=> "Summer Solstice"
# Faker::Coffee.origin #=> "Antigua, Guatemala"
# Faker::Coffee.variety #=> "Pacas"
# Faker::Coffee.notes#=> "balanced, silky, marzipan, orange-creamsicle, bergamot"
