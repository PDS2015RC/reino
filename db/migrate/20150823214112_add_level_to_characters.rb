class AddLevelToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :level, :integer
  end
end
