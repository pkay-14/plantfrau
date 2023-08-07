Fabricator(:plant) do
  fake_plant = Plant.generate_fake_attributes
  name fake_plant[:name]
  botanical_name fake_plant[:botanical_name]
  family fake_plant[:family]
  description fake_plant[:description]
end