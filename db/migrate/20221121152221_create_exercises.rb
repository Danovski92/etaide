class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.float :price_per_day
      t.string :category
      t.integer :response_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
