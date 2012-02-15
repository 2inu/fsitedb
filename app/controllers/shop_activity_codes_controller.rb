class ShopActivityCodesController < ApplicationController
  # GET /shop_activity_codes
  # GET /shop_activity_codes.json
  def index
    @shop_activity_codes = ShopActivityCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shop_activity_codes }
    end
  end

  # GET /shop_activity_codes/1
  # GET /shop_activity_codes/1.json
  def show
    @shop_activity_code = ShopActivityCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shop_activity_code }
    end
  end

  # GET /shop_activity_codes/new
  # GET /shop_activity_codes/new.json
  def new
    @shop_activity_code = ShopActivityCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shop_activity_code }
    end
  end

  # GET /shop_activity_codes/1/edit
  def edit
    @shop_activity_code = ShopActivityCode.find(params[:id])
  end

  # POST /shop_activity_codes
  # POST /shop_activity_codes.json
  def create
    @shop_activity_code = ShopActivityCode.new(params[:shop_activity_code])

    respond_to do |format|
      if @shop_activity_code.save
        format.html { redirect_to @shop_activity_code, notice: 'Shop activity code was successfully created.' }
        format.json { render json: @shop_activity_code, status: :created, location: @shop_activity_code }
      else
        format.html { render action: "new" }
        format.json { render json: @shop_activity_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shop_activity_codes/1
  # PUT /shop_activity_codes/1.json
  def update
    @shop_activity_code = ShopActivityCode.find(params[:id])

    respond_to do |format|
      if @shop_activity_code.update_attributes(params[:shop_activity_code])
        format.html { redirect_to @shop_activity_code, notice: 'Shop activity code was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shop_activity_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_activity_codes/1
  # DELETE /shop_activity_codes/1.json
  def destroy
    @shop_activity_code = ShopActivityCode.find(params[:id])
    @shop_activity_code.destroy

    respond_to do |format|
      format.html { redirect_to shop_activity_codes_url }
      format.json { head :ok }
    end
  end
end
