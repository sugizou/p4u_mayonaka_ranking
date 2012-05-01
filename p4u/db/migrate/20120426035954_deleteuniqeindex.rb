class Deleteuniqeindex < ActiveRecord::Migration
  def up
    add_index :individual_kos, [:player_id, :character_id]
  end

  def down
    remove_index :individual_kos, [:player_id, :character_id]
  end
end
