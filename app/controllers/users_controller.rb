class UsersController < ApplicationController

  def dashboard
    @images = DisplayUser.first.images
  end


  def jakekaad
    @client = Twilio::REST::Client.new 'AC708f670d817e5a1148b4bb8057aae9bc', '4780457b1ebc93d58f88002226f5a6aa'

    @client.account.messages.create({
      :from => '+19717172870',
      :to => '15036883002',
      :body => '1355 NW EVERETT ST. SUITE 120 PORTLAND, OR 97209  (503) 894-9528  HOURS  Sun-Thurs: 7am-11pm  Fri &#38; Sat: 7am-Midnight',
    })

    @client.account.messages.create({
      :from => '+19717172870',
      :to => '15036883002',
      :body => Business.last.message,
    })

    redirect_to dashboard_path
  end

  def create
  end

end
