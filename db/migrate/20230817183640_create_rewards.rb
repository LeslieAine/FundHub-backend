class CreateRewards < ActiveRecord::Migration[7.0]
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.decimal :amount
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
