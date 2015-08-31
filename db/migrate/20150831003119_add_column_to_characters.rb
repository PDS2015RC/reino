class AddColumnToCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :correct, :integer
  	add_column :characters, :wrong, :integer
  end
end
