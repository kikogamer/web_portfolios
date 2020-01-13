# frozen_string_literal: true

FactoryBot.define do
  factory :social do
    kind { %i[facebook twitter linkedin github instagram].sample }
    url { FFaker::Internet.http_url }

    portfolio
  end
end
