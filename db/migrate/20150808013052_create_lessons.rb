class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :url
      t.string :subject

      t.timestamps null: false
    end
  end
end
