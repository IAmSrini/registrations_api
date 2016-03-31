class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :semester, index: true, foreign_key: true, null: false
      t.string :coursename

      t.timestamps null: false
    end
  end
end
