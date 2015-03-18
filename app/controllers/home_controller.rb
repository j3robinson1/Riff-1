class HomeController < ApplicationController
  def index
    @riffblob = Riffblob.new
    @riffblobs = Riffblob.all
  end
end
