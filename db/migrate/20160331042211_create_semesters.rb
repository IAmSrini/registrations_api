class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.references :student, index: true, foreign_key: true
      t.string :sem

      t.timestamps null: false
    end
  end
end
