class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :profile_id, :null => false
      t.string :player_name, :options => 'COLLATE=utf8_unicode_ci'
      t.string :title
      t.string :sex
      t.string :birthday
      t.string :home
      t.string :community_comment, :options => 'COLLATE=utf8_unicode_ci'
      t.string :public_comment, :options => 'COLLATE=utf8_unicode_ci'
      t.integer :alive_flg, :limit => 1
      
      t.timestamps
    end
  end
end
