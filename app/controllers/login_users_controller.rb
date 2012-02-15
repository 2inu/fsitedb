class LoginUsersController < ApplicationController
  # GET /login_users
  # GET /login_users.json
  def index
    @login_users = LoginUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @login_users }
    end
  end

  # GET /login_users/1
  # GET /login_users/1.json
  def show
    @login_user = LoginUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @login_user }
    end
  end

  # GET /login_users/new
  # GET /login_users/new.json
  def new
    @login_user = LoginUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @login_user }
    end
  end

  # GET /login_users/1/edit
  def edit
    @login_user = LoginUser.find(params[:id])
  end

  # POST /login_users
  # POST /login_users.json
  def create
    @login_user = LoginUser.new(params[:login_user])

    respond_to do |format|
      if @login_user.save
        format.html { redirect_to @login_user, notice: 'Login user was successfully created.' }
        format.json { render json: @login_user, status: :created, location: @login_user }
      else
        format.html { render action: "new" }
        format.json { render json: @login_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /login_users/1
  # PUT /login_users/1.json
  def update
    @login_user = LoginUser.find(params[:id])

    respond_to do |format|
      if @login_user.update_attributes(params[:login_user])
        format.html { redirect_to @login_user, notice: 'Login user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @login_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_users/1
  # DELETE /login_users/1.json
  def destroy
    @login_user = LoginUser.find(params[:id])
    @login_user.destroy

    respond_to do |format|
      format.html { redirect_to login_users_url }
      format.json { head :ok }
    end
  end
end
