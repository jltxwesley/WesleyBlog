# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    sequence(:name) { |n| "Article #{n}" }
    content "Dummy Content"
    sequence(:published_on) { |n| Date.new(2013, 6, "#{n}".to_i) }

    after(:build) do |article|
      3.times.each do
        article.tags << FactoryGirl.build(:tag)
      end
    end
  end
end
