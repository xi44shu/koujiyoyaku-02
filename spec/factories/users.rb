FactoryBot.define do
  factory :user do
    first_name            { '田なカ' }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
