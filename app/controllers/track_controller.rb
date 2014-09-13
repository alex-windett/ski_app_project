class TrackController < ApplicationController

  def index
    @run = Run.new(params[:run])
    @segment = Segment.new(params[:segment])
    # @segments = @run.segments
    # @media = @run.mediums
    # @markers = Marker.all 


    respond_to do |format|
      format.html 
      format.json { render :json => @run }    
      end
  end


end