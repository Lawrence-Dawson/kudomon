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
      puts 'didn/t save'
    end
  end

  def captured
    @captured_kudomon = session[:captured_kudomon]
  end

  def kudogym
    @trainers_kudomon = []
    relations = current_trainer.captureds
    relations.each do |relation|
    @trainers_kudomon << relation.kudomon
    @trainers_kudomon
    end
  end


    # puts @kudomon = Kudomon.includes(:trainers).where(trainers: { trainer_id: (current_trainer.id) }).all

    #  puts current_trainer.captureds.first.kudomons

    #  p Trainer.find(current_trainer.id).captureds


  private

  def kudomon_params
    params.require(:kudomon).permit(:species, :of_type, :location)
  end

end
