# frozen_string_literal: true

# portfolio project model
class Project < ApplicationRecord
  belongs_to :portfolio

  enum kind: { open_source: 1, personal: 2 }

  validates :title, presence: true
  validates :kind, presence: true
  validates :url, presence: true, http_url: true
end
