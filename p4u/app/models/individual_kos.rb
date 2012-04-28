class IndividualKos < ActiveRecord::Base

  set_primary_keys :player_id, :character_id
  belongs_to :profile
  belongs_to :users_ko, :foreign_key => ['player_id','character_id']

  
  attr_accessible :arcade_score, :battle_count, :character_id, :max_combo, :player_id, :psr, :score, :score_clear, :win_percentage, :wins_count
end
