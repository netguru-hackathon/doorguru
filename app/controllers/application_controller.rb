class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :close_all_the_doors

  def close_all_the_doors
    DoorCloser.new.call
  end
end
