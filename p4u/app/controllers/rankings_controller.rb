class RankingsController < ApplicationController

  def index
    # @rankings = Profile.includes(:users_ko => :character).where("users_kos.top_psr_point <> 0").order("users_kos.top_psr_point DESC").page(params[:page])
    @rankings = Ranking.page(params[:page])
  end

  def show
    # @user_ranking = Profile.includes(:users_ko => :character).where("users_kos.top_psr_point <> 0").order("users_kos.top_psr_point DESC").where("player_name" == params[:player])

    @rankings = Ranking.where("player_name collate utf8_unicode_ci like ?", "%" + params[:player].to_s + "%").page(params[:page])
  end

  def create
    ranking_sql = "SELECT I.player_id, P.player_name, K.top_psr_point, I.character_id, C.character_name, I.battle_count, I.wins_count, I.win_percentage from profiles as P JOIN users_kos as K ON P.profile_id = K.profile_id JOIN characters as C ON K.top_psr_char_id = C.top_psr_char JOIN individual_kos as I ON K.profile_id = I.player_id and K.top_psr_char_id = I.character_id where alive_flg = 1 and top_psr_point <> 0  ORDER BY K.top_psr_point DESC "
    
    @user_ranking = Ranking.find_by_sql(ranking_sql)
    rank_no = 1
    @user_ranking.each do |user|
      @rank = Ranking.new
      @rank.rank_no        = rank_no
      @rank.player_id      = user.player_id
      @rank.character_id   = user.character_id
      @rank.player_name    = user.player_name
      @rank.character_name = user.character_name
      @rank.psr            = user.top_psr_point
      @rank.battle_count   = user.battle_count
      @rank.wins_count     = user.wins_count
      @rank.win_percentage = user.win_percentage
      @rank.save
      rank_no = rank_no + 1
    end
  end
end
