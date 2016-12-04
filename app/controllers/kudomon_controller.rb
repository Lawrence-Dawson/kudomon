class KudomonController < ApplicationController

  def index
    @kudomon = Kudomon.all
  end

end
