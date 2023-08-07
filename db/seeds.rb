# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# generate random attributes for plant
(1..10).each do |count|
  category_index = count.even? ? 0 : 1
  fake_plant = Plant.generate_fake_attributes
  Plant.create({name: fake_plant[:name], family: fake_plant[:family], botanical_name: fake_plant[:botanical_name],
               description: fake_plant[:description], instructions_attributes:
                  [{category: Instruction::CATEGORIES[category_index], description: Faker::Lorem.sentence(word_count: 10)}],
               additional_infos_attributes: [{category: Faker::Lorem.word, description: Faker::Lorem.sentence(word_count: 10)}]})
end
