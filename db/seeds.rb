require 'json'
require 'open-uri'

# if ENV["RAILS_ENV"] != :production

  @u1 = User.create! :name => "Amir1", :email => "amirhkarimi+1@gmail.com", :notify_usd_to_cad => true, :notify_usd_to_eur => true, :notify_usd_to_irr => true
  @u2 = User.create! :name => "Amir2", :email => "amirhkarimi+2@gmail.com", :notify_usd_to_cad => false, :notify_usd_to_eur => false, :notify_usd_to_irr => false
  @u3 = User.create! :name => "Amir3", :email => "amirhkarimi+3@gmail.com", :notify_usd_to_cad => true, :notify_usd_to_eur => true, :notify_usd_to_irr => true

  rate_CAD = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=CAD").read)["rate"]
  rate_EUR = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=EUR").read)["rate"]
  rate_IRR = JSON.parse(open("http://rate-exchange.appspot.com/currency?from=USD&to=IRR").read)["rate"]

  @rate = Rate.create! :USDtoCAD => rate_CAD, :USDtoEUR => rate_EUR, :USDtoIRR => rate_IRR

# end