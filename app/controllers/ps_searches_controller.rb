class PsSearchesController < ApplicationController
  def index
    @ps_searches = PsSearch.all
  end

  def show
    @ps_search = PsSearch.find(params[:id])
  end

  def new
    @ps_search = PsSearch.new
  end

  def create
    @ps_search = PsSearch.new(params[:ps_search])
    if @ps_search.save
      redirect_to @ps_search, :notice => "Successfully created ps search."
    else
      render :action => 'new'
    end
  end

  def edit
    @ps_search = PsSearch.find(params[:id])
  end

  def update
    @ps_search = PsSearch.find(params[:id])
    if @ps_search.update_attributes(params[:ps_search])
      redirect_to @ps_search, :notice  => "Successfully updated ps search."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ps_search = PsSearch.find(params[:id])
    @ps_search.destroy
    redirect_to ps_searches_url, :notice => "Successfully destroyed ps search."
  end
end
