FactoryGirl.define do
  factory :question do
    sequence(:number) { |n| n }
    sequence(:text) { |n| "Is this a multiple choice question#{n}?" }
    multiple_choice true
  end


  factory :choices do
    hash { { a: "Antidisestablismentarism", b: "Batman", c: "Cactus on toast" } }
  end
end
