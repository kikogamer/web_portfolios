# frozen_string_literal: true

FactoryBot.define do
  factory :hide_company do
    name { FFaker::Lorem.word }

    portfolio
  end
end
