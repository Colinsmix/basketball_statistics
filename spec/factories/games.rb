# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    hteam_id 1
    ateam_id 1
    hteam_score 1
    ateam_score 1
    winner_id 1
  end
end
