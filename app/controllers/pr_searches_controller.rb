class PrSearchesController < ApplicationController
  def index
    @pr_searches = PrSearch.all
  end

  def show
    @pr_search = PrSearch.find(params[:id])
  end

  def new
    @pr_search = PrSearch.new
  end

  def create
    @pr_search = PrSearch.new(params[:pr_search])
    if @pr_search.save
      redirect_to @pr_search, :notice => "Successfully created pr search."
    else
      render :action => 'new'
    end
  end

  def edit
    @pr_search = PrSearch.find(params[:id])
  end

  def update
    @pr_search = PrSearch.find(params[:id])
    if @pr_search.update_attributes(params[:pr_search])
      redirect_to @pr_search, :notice  => "Successfully updated pr search."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @pr_search = PrSearch.find(params[:id])
    @pr_search.destroy
    redirect_to pr_searches_url, :notice => "Successfully destroyed pr search."
  end
end
