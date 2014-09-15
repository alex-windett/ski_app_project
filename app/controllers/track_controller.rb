class TrackController < ApplicationController

  before_filter :authenticate_user!

  def index
    @run = Run.create(params[:run])
    @segment = Segment.create(params[:segment])
    respond_to do |format|
      format.html 
      format.json { render :json => @run }    
      end
  end


end