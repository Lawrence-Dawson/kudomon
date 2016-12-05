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
      redirect_to '/kudomon'
    else
      puts 'didn/t save'
    end
  end

  private

  def kudomon_params
    params.require(:kudomon).permit(:species, :of_type, :location)
  end

end
