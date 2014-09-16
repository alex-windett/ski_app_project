class TrackController < ApplicationController

  before_filter :authenticate_user!

  def index
    @run = Run.new(params[:run])
    @segment = Segment.new(params[:segment])

    respond_to do |format|
      format.html 
      format.json { render :json => @run }    
      end
  end


end