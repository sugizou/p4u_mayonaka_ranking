class CreateUsersKos < ActiveRecord::Migration
  def change
    create_table :users_kos do |t|
      t.integer :profile_id, :null => false
      t.integer :battle_count
      t.integer :battle_wins
      t.float :win_percentage
      t.integer :top_psr_char_id
      t.integer :top_psr_point
      t.integer :level
      t.integer :exp
      t.string :win_streak

      t.timestamps
    end
  end
end
