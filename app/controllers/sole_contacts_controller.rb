class SoleContactsController < ApplicationController
  # GET /sole_contacts
  # GET /sole_contacts.json
  def index
    @sole_contacts = SoleContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sole_contacts }
    end
  end

  # GET /sole_contacts/1
  # GET /sole_contacts/1.json
  def show
    @sole_contact = SoleContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sole_contact }
    end
  end

  # GET /sole_contacts/new
  # GET /sole_contacts/new.json
  def new
    @sole_contact = SoleContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sole_contact }
    end
  end

  # GET /sole_contacts/1/edit
  def edit
    @sole_contact = SoleContact.find(params[:id])
  end

  # POST /sole_contacts
  # POST /sole_contacts.json
  def create
    @sole_contact = SoleContact.new(params[:sole_contact])

    respond_to do |format|
      if @sole_contact.save
        format.html { redirect_to @sole_contact, notice: 'Sole contact was successfully created.' }
        format.json { render json: @sole_contact, status: :created, location: @sole_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @sole_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sole_contacts/1
  # PUT /sole_contacts/1.json
  def update
    @sole_contact = SoleContact.find(params[:id])

    respond_to do |format|
      if @sole_contact.update_attributes(params[:sole_contact])
        format.html { redirect_to @sole_contact, notice: 'Sole contact was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sole_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sole_contacts/1
  # DELETE /sole_contacts/1.json
  def destroy
    @sole_contact = SoleContact.find(params[:id])
    @sole_contact.destroy

    respond_to do |format|
      format.html { redirect_to sole_contacts_url }
      format.json { head :ok }
    end
  end
end
