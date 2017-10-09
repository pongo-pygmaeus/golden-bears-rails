class GoldenBearsController < ApplicationController

# Prefix Verb URI Pattern          Controller#Action
#    bears GET  /bears(.:format)     bears#index
#          POST /bears(.:format)     bears#create
# new_bear GET  /bears/new(.:format) bears#new
#     bear GET  /bears/:id(.:format) bears#show

  # get '/bears'
  def index
    @bears = GoldenBear.all
    # Assume I want to render a page called /bears/index.html.erb
  end

  # get '/bears/:id'
  def show
    @bear = GoldenBear.find(params[:id])
    @fish = @bear.fish

    # Render a /bears/show.html.erb
    # What if I want to render different things based on the request?
  end

  def display
  end

end
