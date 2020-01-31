# frozen_string_literal: true

# portfolio projects model
class Project < ApplicationRecord
  belongs_to :portfolio

  enum kind: { open_source: 1, private: 2 }

  validates :title, presence: true
  validates :kind, presence: true
end
