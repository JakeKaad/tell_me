class BusinessesController < ApplicationController

  def tilt
    @business = Business.first
    @images = @business.images
  end

  def lolo
    @business = Business.second
    @images = @business.images
  end

end
