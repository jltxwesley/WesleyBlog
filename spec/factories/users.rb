# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "wesley"
    password "blog"
    password_confirmation "blog"

    factory :invalid_user do
      name nil
    end
  end
end
