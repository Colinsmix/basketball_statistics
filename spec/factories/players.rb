# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    team_id ""
    position "MyString"
    height ""
    weight ""
    firstname "MyString"
    lastname "MyString"
  end
end
