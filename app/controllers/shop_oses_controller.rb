class ShopOsesController < ApplicationController
  # GET /shop_oses
  # GET /shop_oses.json
  def index
    @shop_oses = ShopOse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shop_oses }
    end
  end

  # GET /shop_oses/1
  # GET /shop_oses/1.json
  def show
    @shop_ose = ShopOse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shop_ose }
    end
  end

  # GET /shop_oses/new
  # GET /shop_oses/new.json
  def new
    @shop_ose = ShopOse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shop_ose }
    end
  end

  # GET /shop_oses/1/edit
  def edit
    @shop_ose = ShopOse.find(params[:id])
  end

  # POST /shop_oses
  # POST /shop_oses.json
  def create
    @shop_ose = ShopOse.new(params[:shop_ose])

    respond_to do |format|
      if @shop_ose.save
        format.html { redirect_to @shop_ose, notice: 'Shop ose was successfully created.' }
        format.json { render json: @shop_ose, status: :created, location: @shop_ose }
      else
        format.html { render action: "new" }
        format.json { render json: @shop_ose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shop_oses/1
  # PUT /shop_oses/1.json
  def update
    @shop_ose = ShopOse.find(params[:id])

    respond_to do |format|
      if @shop_ose.update_attributes(params[:shop_ose])
        format.html { redirect_to @shop_ose, notice: 'Shop ose was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shop_ose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_oses/1
  # DELETE /shop_oses/1.json
  def destroy
    @shop_ose = ShopOse.find(params[:id])
    @shop_ose.destroy

    respond_to do |format|
      format.html { redirect_to shop_oses_url }
      format.json { head :ok }
    end
  end
end
