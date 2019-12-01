FactoryBot.define do
  factory :article do
    title { Faker::Lorem.characters(number: 5) }
    content { Faker::Lorem.characters(number: 100) }
    user_id { FactoryBot.create(:user).id }
  end
end
