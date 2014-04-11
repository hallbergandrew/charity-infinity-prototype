FactoryGirl.define do
  factory :user do
    email "user@gmail.com"
    password "epicodus"
    password_confirmation "epicodus"
  end

  factory :user_login do
    email "user@gmail.com"
    password "epicodus"
  end
end

