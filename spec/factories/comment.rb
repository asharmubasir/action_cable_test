FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.characters(number: 100) }
    user_id { FactoryBot.create(:user).id }
    article_id { FactoryBot.create(:article).id }
  end
end
