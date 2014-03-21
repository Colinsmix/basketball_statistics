# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    team_id 2
    position "SF"
    height 60
    weight 170
    firstname "John"
    lastname "Doe"
  end
end
