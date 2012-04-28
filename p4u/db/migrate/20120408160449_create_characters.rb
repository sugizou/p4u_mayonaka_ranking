class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :top_psr_char, :null => false
      t.string :character_name, :null => false

      t.timestamps
    end
  end
end
