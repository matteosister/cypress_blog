require 'faker'

FactoryGirl.define do
  factory :post, class: Post do
    title { Faker::Name.title }
    text  { Faker::Lorem.sentences(5).join(', ') }
  end

  factory :tag do
    name { Faker::Lorem.word }
  end
end