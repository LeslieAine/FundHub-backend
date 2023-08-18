class CreateCategoriesProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_projects do |t|
      t.references :category, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
