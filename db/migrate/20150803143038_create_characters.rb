class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :xp
      t.integer :gold
      t.string :img
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
