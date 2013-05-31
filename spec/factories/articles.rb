# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    name "MyString"
    content "MyText"
    published_on "2013-05-31"
  end
end
