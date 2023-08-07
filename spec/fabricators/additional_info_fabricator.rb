Fabricator(:additional_info) do
  category Faker::Lorem.word
  description Faker::Lorem.sentence(word_count: 10)
  plant_id 1
end