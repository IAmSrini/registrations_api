class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :student, index: true, foreign_key: true, null: false
      t.references :course, index: true, foreign_key: true, null: false
      t.references :semester, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
