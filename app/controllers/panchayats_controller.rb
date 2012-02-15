class PanchayatsController < ApplicationController
  # GET /panchayats
  # GET /panchayats.json
  def index
    @panchayats = Panchayat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @panchayats }
    end
  end

  # GET /panchayats/1
  # GET /panchayats/1.json
  def show
    @panchayat = Panchayat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @panchayat }
    end
  end

  # GET /panchayats/new
  # GET /panchayats/new.json
  def new
    @panchayat = Panchayat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @panchayat }
    end
  end

  # GET /panchayats/1/edit
  def edit
    @panchayat = Panchayat.find(params[:id])
  end

  # POST /panchayats
  # POST /panchayats.json
  def create
    @panchayat = Panchayat.new(params[:panchayat])

    respond_to do |format|
      if @panchayat.save
        format.html { redirect_to @panchayat, notice: 'Panchayat was successfully created.' }
        format.json { render json: @panchayat, status: :created, location: @panchayat }
      else
        format.html { render action: "new" }
        format.json { render json: @panchayat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /panchayats/1
  # PUT /panchayats/1.json
  def update
    @panchayat = Panchayat.find(params[:id])

    respond_to do |format|
      if @panchayat.update_attributes(params[:panchayat])
        format.html { redirect_to @panchayat, notice: 'Panchayat was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @panchayat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panchayats/1
  # DELETE /panchayats/1.json
  def destroy
    @panchayat = Panchayat.find(params[:id])
    @panchayat.destroy

    respond_to do |format|
      format.html { redirect_to panchayats_url }
      format.json { head :ok }
    end
  end
end
