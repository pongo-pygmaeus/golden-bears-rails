class FishController < ApplicationController
  def new
  end

  def create
  end

  def all_fish
  end

  def show
    @fish = Fish.find(params[:id])
    # @bear = GoldenBear.find(params[:golden_bear_id])
    @bear = @fish.bear
    # Response is default to {name of resource}/{name of route}.html.erb
    # Otherwise set up a respond_to block to do non-default behavior

    respond_to do |format|
      format.html { render :show } #render fish/show.{format}.erb
      format.json { render json: @fish }
      format.js
    end
  end

  def index
    @bear = GoldenBear.find(params[:golden_bear_id])
    @fish = @bear.fish # --> Get all the fish associated with this bear
  end
end
