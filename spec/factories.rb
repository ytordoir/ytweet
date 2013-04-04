FactoryGirl.define do
  factory :user do
    name     "Yannick Tordoir"
    email    "yannick.tordoir@gmail.com"
    password "test123"
    password_confirmation "test123"
  end
end