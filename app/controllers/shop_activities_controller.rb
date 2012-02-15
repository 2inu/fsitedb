class ShopActivitiesController < ApplicationController
  # GET /shop_activities
  # GET /shop_activities.json
  def index
    @shop_activities = ShopActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shop_activities }
    end
  end

  # GET /shop_activities/1
  # GET /shop_activities/1.json
  def show
    @shop_activity = ShopActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shop_activity }
    end
  end

  # GET /shop_activities/new
  # GET /shop_activities/new.json
  def new
    @shop_activity = ShopActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shop_activity }
    end
  end

  # GET /shop_activities/1/edit
  def edit
    @shop_activity = ShopActivity.find(params[:id])
  end

  # POST /shop_activities
  # POST /shop_activities.json
  def create
    @shop_activity = ShopActivity.new(params[:shop_activity])

    respond_to do |format|
      if @shop_activity.save
        format.html { redirect_to @shop_activity, notice: 'Shop activity was successfully created.' }
        format.json { render json: @shop_activity, status: :created, location: @shop_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @shop_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shop_activities/1
  # PUT /shop_activities/1.json
  def update
    @shop_activity = ShopActivity.find(params[:id])

    respond_to do |format|
      if @shop_activity.update_attributes(params[:shop_activity])
        format.html { redirect_to @shop_activity, notice: 'Shop activity was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shop_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_activities/1
  # DELETE /shop_activities/1.json
  def destroy
    @shop_activity = ShopActivity.find(params[:id])
    @shop_activity.destroy

    respond_to do |format|
      format.html { redirect_to shop_activities_url }
      format.json { head :ok }
    end
  end
end
