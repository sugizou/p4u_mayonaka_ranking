class CreateUsersBattles < ActiveRecord::Migration
  def change
    create_table :users_battles do |t|
      t.integer :profile_id, :null => false
      t.float :gyakugire_act_avg
      t.float :negative_avg
      t.float :counter_avg
      t.float :slowly_counter_avg
      t.float :fatal_counter_avg
      t.float :reversal_burst_avg
      t.float :reversal_burst_avg
      t.float :max_burst_avg
      t.float :one_more_burst_avg
      t.float :gurd_cancel_avg
      t.float :just_gurd_avg
      t.float :one_more_cancel_avg
      t.float :skill_bust_avg
      t.float :sp_skill_avg
      t.float :mortal_blow_avg
      t.float :sp_skill_ko
      t.float :mortal_blow_ko_avg

      t.timestamps
    end
  end
end
