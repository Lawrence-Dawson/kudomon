class KudomonController < ApplicationController
  before_action :authenticate_trainer!, :except => [:index, :show]
  def index
    @kudomon = Kudomon.all
  end



end
