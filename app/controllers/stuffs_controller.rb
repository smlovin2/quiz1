class StuffsController < ApplicationController
  def index
    @stuff = Stuff.all
  end
end
