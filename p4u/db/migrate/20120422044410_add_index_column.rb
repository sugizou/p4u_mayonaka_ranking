class AddIndexColumn < ActiveRecord::Migration
  def up
    add_index :users_battles, :profile_id
  end

  def down
    remove_index :users_battles, :profile_id
  end
end
