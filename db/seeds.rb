require 'faker'
10.times do
  Pet.create(
    name: Faker::Name.name,
    birthday: Date.today - 10.years,
    race: Faker::Name.name,
    pet_type: [:dog, :cat].sample
  )
end
