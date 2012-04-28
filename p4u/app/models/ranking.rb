class Ranking < ActiveRecord::Base
  belongs_to :profile
  belongs_to :users_ko
  belongs_to :character
  

  attr_accessible :player_id, :character_id, :player_name, :character_name, :psr, :battle_count, :wins_count, :win_percentage, :created_at, :updated_at
end
