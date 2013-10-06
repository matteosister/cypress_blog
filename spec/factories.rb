FactoryGirl.define do
  factory :post, class: Post do
    title 'The Facotry Post'
    text  'Lorem ipsum dolor sit amet ' * 30
  end
end