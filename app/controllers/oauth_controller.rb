class OauthController < ApplicationController

  def callback
    binding.pry
    response = Instagram.get_access_token(params[:code], :redirect_uri => ENV['CALLBACK_URL'] )
    session[:access_token] = response.access_token
    redirect_to "/home"
  end

  def connect
     redirect_to Instagram.authorize_url(:redirect_uri => ENV['CALLBACK_URL'], response_type: :token)
  end
end
