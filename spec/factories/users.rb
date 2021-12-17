FactoryBot.define do
  factory :user do
    username { 'pincopallino' }
    email { 'test@test.eu' }
    password { 'password' }
    password_confirmation { 'password' }
    admin { false }
    trait :admin do
      admin { true }
    end
  end
end
