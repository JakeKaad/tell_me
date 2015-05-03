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

    image_one = create_new_image("https://scontent.cdninstagram.com/hphotos-xpa1/t51.2885-15/e15/11142194_741753562608854_411882935_n.jpg", 1, "TILT - Handcrafted Food & Drink, Built For The American Workforce.")
    image_two = create_new_image("https://scontent.cdninstagram.com/hphotos-xpf1/t51.2885-15/e15/11055620_865978136792042_1030059351_n.jpg", 2, "House of Lolo - Portland, Oregon")
    DisplayUser.first.images << image_one
    DisplayUser.first.images << image_two

    redirect_to dashboard_path
  end

  def reset
    Image.first.delete
    Image.first.delete
    redirect_to dashboard_path
  end

  def create_new_image(url, business, location)
    Image.create(url: url, business_id: business, location: location)
  end

  # house of lolo image for demo
  # https://instagram.com/p/0rLk7bqgut/?taken-by=houseoflolo

  # tilt image for demo
  # https://instagram.com/p/1wP-c6nd9V/?taken-by=tiltitup

  # our website
  # https://glacial-badlands-4111.herokuapp.com/
end
