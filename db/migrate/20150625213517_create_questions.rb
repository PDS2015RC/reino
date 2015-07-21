class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :lesson
      t.text :statement
      t.string :a
      t.string :b
      t.string :c
      t.string :d

      t.timestamps null: false
    end
  end
end
