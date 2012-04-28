class SearchController < ApplicationController
  def index
    
  end

  def show
    @profile = Profile.scoped
    @profile = Profile.includes(:users_ko)
    @result = @profile.where("player_name collate utf8_unicode_ci like ?", "%" + params[:player].to_s + "%")
    @result = @result.where(:users_kos => {:top_psr_char_id => params[:char]}) if params[:char].present?

    @result.order("profiles.profile_id ASC")
    @result = @result.page(params[:page])

    render(:action => 'show')
  end
end
