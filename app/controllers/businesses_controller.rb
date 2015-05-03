class BusinessesController < ApplicationController

  def dashboard
    @business = Business.first
    @images = @business.images
  end

end
