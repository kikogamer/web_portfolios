# frozen_string_literal: true

# HideCompany class
class HideCompany < ApplicationRecord
  belongs_to :portfolio

  validates :name, uniqueness: { scope: :portfolio_id }
end
