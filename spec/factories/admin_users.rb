# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_user do
    email "MyString"
    password_hash "MyString"
    password_salt "MyString"
  end
end
