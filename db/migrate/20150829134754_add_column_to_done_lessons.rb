class AddColumnToDoneLessons < ActiveRecord::Migration
  def change
  	add_column :done_lessons, :score, :integer
  end
end
