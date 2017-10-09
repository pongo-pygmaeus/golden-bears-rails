class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # This is the place where you put behavior that applies
  # to every controller
  # Pre rails 5 helpers weren't available in controllers
end
