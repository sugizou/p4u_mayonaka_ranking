class AddIndexUsersKo < ActiveRecord::Migration
  def up
    add_index :users_kos, :profile_id
    add_index :users_kos, :top_psr_point
  end

  def down
    remove_index :users_kos, :profile_id
    remove_index :users_kos, :top_psr_point
  end
end
