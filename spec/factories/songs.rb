FactoryGirl.define do
  factory :song do
    title  { Faker::Name.name }
    genere { Faker::Lorem.sentence }
  end
end
