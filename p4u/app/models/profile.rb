class Profile < ActiveRecord::Base
  has_one :users_battle
  has_one :users_ko
  
  default_scope where(:alive_flg => 1)

  paginates_per 50
  
  attr_accessible :player_name, :title, :sex, :birthday, :home, :community_comment, :public_comment, :alive_flg, :created_at, :updated_at
end
