FactoryBot.define do
  factory :quote do
    quote { Faker::GameOfThrones.quote }
    author { Faker::GameOfThrones.character }
    author_about { Faker::GameOfThrones.house }
    tags { [Faker::GameOfThrones.dragon, Faker::GameOfThrones.city] }
  end
end
