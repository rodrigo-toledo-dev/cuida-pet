# enconding: utf-8

FactoryBot.define do
  factory :my_dog, class: 'Pet' do
    name  { "Babe Dog" }
    birthday { '2000-01-01'.to_date }
    race { 'Pitbull' }
    pet_type { :dog } # 0 Dog
  end

  factory :my_cat, class: 'Pet' do
    name  { "Cat Dog" }
    birthday { '2000-01-01'.to_date }
    race { 'Persa' }
    pet_type { :cat } # 1 Cat
  end

  factory :medical_card do
    my_dog
    symptoms { 'symptoms of my pet' }
    treatment { 'treatment to my pet' }
  end
end
