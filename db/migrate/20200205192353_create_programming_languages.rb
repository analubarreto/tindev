class CreateProgrammingLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :programming_languages do |t|
      t.string :name
      t.integer :release_year
      t.string :creator

      t.timestamps
    end
  end
end
