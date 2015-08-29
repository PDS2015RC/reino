class CreateDoneLessons < ActiveRecord::Migration
  def change
    create_table :done_lessons do |t|
      t.references :Lesson, index: true, foreign_key: true
      t.belongs_to :Character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
