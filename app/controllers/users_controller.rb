class UsersController < ApplicationController

  def dashboard
    @images = Image.all.shuffle.first(5)
  end

  def new
  end

  def create
  end

  def business
  end

end
