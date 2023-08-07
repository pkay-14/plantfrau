Fabricator(:instruction) do
  category Instruction::CATEGORIES.first
  description Faker::Lorem.sentence(word_count: 10)
  plant_id 1
end