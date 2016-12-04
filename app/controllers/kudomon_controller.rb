class KudomonController < ApplicationController
  respond_to :html, :js
  before_action :authenticate_trainer!, :except => [:index, :show]
  def index
    @kudomon = Kudomon.all
  end

  def location
    @kudomon = Kudomon.all
    @trainer_location = params[:location]
  end

  def capture
  
  end


end
