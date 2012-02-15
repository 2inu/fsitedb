class ProductShopsController < ApplicationController
  # GET /product_shops
  # GET /product_shops.json
  def index
    @product_shops = ProductShop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_shops }
    end
  end

  # GET /product_shops/1
  # GET /product_shops/1.json
  def show
    @product_shop = ProductShop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_shop }
    end
  end

  # GET /product_shops/new
  # GET /product_shops/new.json
  def new
    @product_shop = ProductShop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_shop }
    end
  end

  # GET /product_shops/1/edit
  def edit
    @product_shop = ProductShop.find(params[:id])
  end

  # POST /product_shops
  # POST /product_shops.json
  def create
    @product_shop = ProductShop.new(params[:product_shop])

    respond_to do |format|
      if @product_shop.save
        format.html { redirect_to @product_shop, notice: 'Product shop was successfully created.' }
        format.json { render json: @product_shop, status: :created, location: @product_shop }
      else
        format.html { render action: "new" }
        format.json { render json: @product_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_shops/1
  # PUT /product_shops/1.json
  def update
    @product_shop = ProductShop.find(params[:id])

    respond_to do |format|
      if @product_shop.update_attributes(params[:product_shop])
        format.html { redirect_to @product_shop, notice: 'Product shop was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_shops/1
  # DELETE /product_shops/1.json
  def destroy
    @product_shop = ProductShop.find(params[:id])
    @product_shop.destroy

    respond_to do |format|
      format.html { redirect_to product_shops_url }
      format.json { head :ok }
    end
  end
end
