class Character < ActiveRecord::Base
  
  belongs_to :users_ko
  
  attr_accessible :top_psr_char, :character_name

end
