# frozen_string_literal: true

FactoryBot.define do
  factory :project do
    title { FFaker::Lorem.word }
    description { FFaker::Lorem.paragraph }
    kind { %i[open_source personal].sample }
    url { FFaker::Internet.http_url }

    portfolio
  end
end
