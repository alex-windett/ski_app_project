class StuffController < ApplicationController

  def index
@media = Medium.all
  end


end