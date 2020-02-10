class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :kind
      t.string :url
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
