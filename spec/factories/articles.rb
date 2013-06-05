# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    name "New Article"
    content "New Content"
    published_on Date.new(2013, 6, 1)
  end
end
