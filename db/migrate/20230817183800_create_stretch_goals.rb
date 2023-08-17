class CreateStretchGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :stretch_goals do |t|
      t.string :title
      t.text :description
      t.decimal :amount
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
