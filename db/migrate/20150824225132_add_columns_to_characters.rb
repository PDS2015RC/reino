class AddColumnsToCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :armor, :string
  	add_column :characters, :shield, :string
  	add_column :characters, :weapon, :string
  end
end
