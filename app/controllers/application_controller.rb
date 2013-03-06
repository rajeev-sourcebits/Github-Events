class ApplicationController < ActionController::Base
  include UserfeedsHelper
  protect_from_forgery
end
