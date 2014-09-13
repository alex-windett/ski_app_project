class SegmentsController < ApplicationController

def new
    @segment = Segment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @segment }
    end
  end

  # POST /countries
  # POST /countries.json
  def create
    @segment = Segment.new(params[:segment])

    respond_to do |format|
      if @segment.save
        format.html { redirect_to @segment, notice: 'Segment was successfully created.' }
        format.json { render json: @segment, status: :created, location: @segment }
      else
        format.html { render action: "new" }
        format.json { render json: @segment.errors, status: :unprocessable_entity }
      end
    end
  end

end