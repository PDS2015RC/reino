class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :items, :type, :part
  end
end
