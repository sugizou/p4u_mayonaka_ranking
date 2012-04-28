class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :rank_no, :null => false
      t.integer :player_id, :null => false
      t.integer :character_id, :null => false
      t.string :player_name, :null => false
      t.string :character_name, :null => false
      t.integer :psr, :null => false
      t.integer :battle_count, :null => false
      t.integer :wins_count, :null => false
      t.float :win_percentage, :null => false

      t.timestamps
    end
    
    add_index :rankings, :player_id
    add_index :rankings, :player_name
    add_index :rankings, :character_name
    add_index :rankings, :psr
    
  end
end
