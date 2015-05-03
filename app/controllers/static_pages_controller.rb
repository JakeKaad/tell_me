class StaticPagesController < ApplicationController


  def home
    @images = Image.all
  end

  def tellme
    json =  HTTParty.get('https://api.instagram.com/v1/tags/lololifestyle/media/recent?client_id=15acbbc0dd63470f978495f6521d7c0e')
    @image_urls = []
    binding.pry
    json["data"].each do |item|
      @image_urls << item["images"]["standard_resolution"]["url"]
    end
  end

  def tellme_dashboard
    user_id = "1925253428"
    access_token = "1925253428.15acbbc.906f231fb4cc4af4b9ba5d085a2f3af6"
    json =  HTTParty.get("https://api.instagram.com/v1/users/#{user_id}/media/recent/?access_token=#{access_token}")
    @image_urls = []
    binding.pry
    json["data"].each do |item|
      @image_urls << item["images"]["standard_resolution"]["url"]
    end
  end

  def stuff
    image_location = json["data"][0]["location"]["name"]
    standard_resolution = json["data"][0]["images"]["standard_resolution"]["url"]
  end
end
