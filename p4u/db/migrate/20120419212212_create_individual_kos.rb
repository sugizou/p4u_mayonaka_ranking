class CreateIndividualKos < ActiveRecord::Migration
  def change
    create_table :individual_kos do |t|
      t.integer :player_id, :null => false
      t.integer :character_id, :null => false
      t.integer :psr
      t.integer :battle_count
      t.integer :wins_count
      t.float :win_percentage
      t.integer :max_combo
      t.integer :max_damage
      t.integer :score
      t.string :score_clear
      t.integer :arcade_score

      t.timestamps
    end
  end
end
