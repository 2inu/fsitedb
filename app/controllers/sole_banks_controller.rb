class SoleBanksController < ApplicationController
  # GET /sole_banks
  # GET /sole_banks.json
  def index
    @sole_banks = SoleBank.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sole_banks }
    end
  end

  # GET /sole_banks/1
  # GET /sole_banks/1.json
  def show
    @sole_bank = SoleBank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sole_bank }
    end
  end

  # GET /sole_banks/new
  # GET /sole_banks/new.json
  def new
    @sole_bank = SoleBank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sole_bank }
    end
  end

  # GET /sole_banks/1/edit
  def edit
    @sole_bank = SoleBank.find(params[:id])
  end

  # POST /sole_banks
  # POST /sole_banks.json
  def create
    @sole_bank = SoleBank.new(params[:sole_bank])

    respond_to do |format|
      if @sole_bank.save
        format.html { redirect_to @sole_bank, notice: 'Sole bank was successfully created.' }
        format.json { render json: @sole_bank, status: :created, location: @sole_bank }
      else
        format.html { render action: "new" }
        format.json { render json: @sole_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sole_banks/1
  # PUT /sole_banks/1.json
  def update
    @sole_bank = SoleBank.find(params[:id])

    respond_to do |format|
      if @sole_bank.update_attributes(params[:sole_bank])
        format.html { redirect_to @sole_bank, notice: 'Sole bank was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sole_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sole_banks/1
  # DELETE /sole_banks/1.json
  def destroy
    @sole_bank = SoleBank.find(params[:id])
    @sole_bank.destroy

    respond_to do |format|
      format.html { redirect_to sole_banks_url }
      format.json { head :ok }
    end
  end
end
