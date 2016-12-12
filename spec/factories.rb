FactoryGirl.define do
  factory :car do
    owner
    driver
    monetary_value 4
    sequence :max_speed do |n|
      n
    end
  end

  factory :owner do
    name "Scrooge McDuck"
  end

  factory :driver do
    name "Baloo"
  end
end
