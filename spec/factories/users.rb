# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "test"
    password "password"
    password_confirmation "password"

    factory :invalid_user do
      name nil
    end
  end
end
