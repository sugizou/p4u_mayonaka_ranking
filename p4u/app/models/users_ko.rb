class UsersKo < ActiveRecord::Base

  set_primary_keys :profile_id, :top_psr_char_id
  
  belongs_to :profile
  belongs_to :character, :foreign_key => 'top_psr_char_id', :primary_key => 'top_psr_char'
  has_many :individual_kos, :foreign_key => ['profile_id', 'top_psr_char_id'], :primary_key => ['player_id', 'character_id']
  
  attr_accessible :profile_id, :battle_count, :battle_wins, :level, :exp, :top_psr_char_id, :top_psr_point, :win_percentage, :win_streak, :created_at, :updated_at
end
