class ShopPhotosController < ApplicationController
  # GET /shop_photos
  # GET /shop_photos.json
  def index
    @shop_photos = ShopPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shop_photos }
    end
  end

  # GET /shop_photos/1
  # GET /shop_photos/1.json
  def show
    @shop_photo = ShopPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shop_photo }
    end
  end

  # GET /shop_photos/new
  # GET /shop_photos/new.json
  def new
    @shop_photo = ShopPhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shop_photo }
    end
  end

  # GET /shop_photos/1/edit
  def edit
    @shop_photo = ShopPhoto.find(params[:id])
  end

  # POST /shop_photos
  # POST /shop_photos.json
  def create
    @shop_photo = ShopPhoto.new(params[:shop_photo])

    respond_to do |format|
      if @shop_photo.save
        format.html { redirect_to @shop_photo, notice: 'Shop photo was successfully created.' }
        format.json { render json: @shop_photo, status: :created, location: @shop_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @shop_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shop_photos/1
  # PUT /shop_photos/1.json
  def update
    @shop_photo = ShopPhoto.find(params[:id])

    respond_to do |format|
      if @shop_photo.update_attributes(params[:shop_photo])
        format.html { redirect_to @shop_photo, notice: 'Shop photo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shop_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_photos/1
  # DELETE /shop_photos/1.json
  def destroy
    @shop_photo = ShopPhoto.find(params[:id])
    @shop_photo.destroy

    respond_to do |format|
      format.html { redirect_to shop_photos_url }
      format.json { head :ok }
    end
  end
end
