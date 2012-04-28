class UsersBattle < ActiveRecord::Base
  belongs_to :profile
  
  attr_accessible :profile_id,  :counter_avg,  :fatal_counter_avg,  :gurd_cancel_avg,  :gyakugire_act_avg,  :just_gurd_avg,  :max_burst_avg,  :mortal_blow_avg,  :mortal_blow_ko_avg,  :negative_avg,  :one_more_burst_avg,  :one_more_cancel_avg,  :reversal_burst_avg,  :reversal_burst_avg,  :skill_bust_avg,  :slowly_counter_avg,  :sp_skill_avg,  :sp_skill_ko,  :created_at,  :updated_at
end
