# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    name "George Washington"
    street "123 G street"
    city "Portland"
    state "Oregon"
    zip "97201"
    phone "(503)123-1234"
    user_id 1
  end
end
