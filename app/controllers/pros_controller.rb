class ProsController < ApplicationController
  # GET /pros
  # GET /pros.json
  def index
    @pros = Pro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pros }
    end
  end

  # GET /pros/1
  # GET /pros/1.json
  def show
    @pro = Pro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pro }
    end
  end

  # GET /pros/new
  # GET /pros/new.json
  def new
    @pro = Pro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pro }
    end
  end

  # GET /pros/1/edit
  def edit
    @pro = Pro.find(params[:id])
  end

  # POST /pros
  # POST /pros.json
  def create
    @pro = Pro.new(params[:pro])

    respond_to do |format|
      if @pro.save
        format.html { redirect_to @pro, notice: 'Pro was successfully created.' }
        format.json { render json: @pro, status: :created, location: @pro }
      else
        format.html { render action: "new" }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pros/1
  # PUT /pros/1.json
  def update
    @pro = Pro.find(params[:id])

    respond_to do |format|
      if @pro.update_attributes(params[:pro])
        format.html { redirect_to @pro, notice: 'Pro was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pros/1
  # DELETE /pros/1.json
  def destroy
    @pro = Pro.find(params[:id])
    @pro.destroy

    respond_to do |format|
      format.html { redirect_to pros_url }
      format.json { head :ok }
    end
  end
end
