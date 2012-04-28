class IndividualkosController < ApplicationController

  def index
    @individual = IndividualKos.where(:player_id => params[:p_id]).where(:character_id => params[:char_id]).order('created_at DESC').limit(1)
  end
end
