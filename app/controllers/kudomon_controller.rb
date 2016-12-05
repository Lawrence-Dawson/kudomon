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
    captured = Captured.new
    captured.kudomon = Kudomon.find_by_id(params[:format])
    captured.trainer = Trainer.find_by_id(current_trainer.id)
    if captured.save!
      session[:captured_kudomon] = Kudomon.find_by_id(params[:format]).species
      redirect_to '/kudomon/captured'
    else
      redirect_to '/kudomon'
      flash[:alert] = 'Unable to capture Kudomon'
    end
  end

  def captured
    @captured_kudomon = session[:captured_kudomon]
  end

  def kudogym
    @trainers_kudomon = []
    relations = Trainer.find(current_trainer.id).captureds
    relations.each { |relation| @trainers_kudomon << relation.kudomon }
    @trainers_kudomon.count
  end

  def battle
    @the_chosen = []
    params[:kudomon_ids].each do |kudomon|
      k = Kudomon.find_by_id(kudomon)
      @the_chosen << k
    end
    @the_chosen
  end

  private

  def kudomon_params
    params.require(:kudomon).permit(:species, :of_type, :location)
  end

end
