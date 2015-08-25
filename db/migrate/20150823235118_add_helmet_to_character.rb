class AddHelmetToCharacter < ActiveRecord::Migration
  def change
  	add_column :characters, :helmet, :string
  end
end
