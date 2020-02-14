# frozen_string_literal: true

# CreateHideCompanies migration
class CreateHideCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :hide_companies do |t|
      t.string :name
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
