FactoryGirl.define do
  factory :user do
    name     "Eiji Hori"
    email    "eijihori@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
