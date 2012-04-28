class ProfilesController < ApplicationController
  def index
    profile_id = params[:id]
    
    @user = Profile.includes(:users_ko).includes(:users_ko => :character).includes(:users_battle).find_by_profile_id(profile_id)

    
    render :nothing => true, :status => 404 if @user.nil?
    
    render :action => 'index' unless @user.nil?
  end
end
