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

    if request.xhr?
      p "*" * 30
      p "Got an AJAX request"
      p "*" * 30
    end

    respond_to do |format|
      format.html # try to render a file called {route_name}.{format}.erb
      format.js   # try to render a file called show.js.erb
      format.json {render json: @fish}
    end

    # Render a /bears/show.html.erb
    # What if I want to render different things based on the request?
  end

  def new
    @errors = flash[:errors]
  end

  def create
    @bear = GoldenBear.new

    if @bear.save
      # Redirect to show page
    else
      flash[:errors] = @bear.errors.full_messages
      redirect golden_bears_new_path
    end
  end

end






